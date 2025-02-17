<?php namespace App\Http\Controllers;

use Session;
use Request;
use DB;
use CRUDBooster;
use Illuminate\Support\Facades\Http;


class AdminOutboxController extends \crocodicstudio\crudbooster\controllers\CBController
{

    public function cbInit()
    {

        # START CONFIGURATION DO NOT REMOVE THIS LINE
        $this->title_field = "id";
        $this->limit = "20";
        $this->orderby = "id,desc";
        $this->global_privilege = false;
        $this->button_table_action = true;
        $this->button_bulk_action = true;
        $this->button_action_style = "button_icon";
        $this->button_add = true;
        $this->button_edit = true;
        $this->button_delete = true;
        $this->button_detail = true;
        $this->button_show = true;
        $this->button_filter = true;
        $this->button_import = false;
        $this->button_export = false;
        $this->table = "outbox";
        # END CONFIGURATION DO NOT REMOVE THIS LINE

        # START COLUMNS DO NOT REMOVE THIS LINE
        $this->col = [];
        $this->col[] = ["label" => "Group", "name" => "group_id", "join" => "groups,name"];
        $this->col[] = ["label" => "Number", "name" => "number"];
        $this->col[] = ["label" => "Text", "name" => "text"];
        $this->col[] = ["label" => "Device", "name" => "id_device", "join" => "device,name"];
        $this->col[] = ["label" => "Type", "name" => "type"];
        $this->col[] = ["label" => "Url File", "name" => "url_file"];
        $this->col[] = ["label" => "Time", "name" => "created_at"];
        $this->col[] = ["label" => "Status", "name" => "status", "callback_php" => '($row->status==1)?"<span class=\"badge bg-green\">Sent</span>":"<span class=\"badge bg-red\">Failed</span>"'];
        # END COLUMNS DO NOT REMOVE THIS LINE

        # START FORM DO NOT REMOVE THIS LINE
        $this->form = [];
//        $this->form[] = ['label' => 'Number', 'name' => 'number', 'type' => 'text', 'validation' => 'required|numeric|min:1', 'width' => 'col-sm-10', 'help' => 'The receiver phone number in format: [Country Code Without + Sign][Phone Number]. Example: 628231xxxxxx.'];


        $this->form[] = ['label' => 'المحموعة', 'name' => 'group_id', 'type' => 'select2',
            'validation' => 'nullable', 'width' => 'col-sm-10',
            'datatable' => 'groups,name', 'help' => 'if you went send to group ',
            'datatable_where' => 'user_id=' . CRUDBooster::myId()];

        $this->form[] = ['label' => 'Numbers', 'name' => 'number', 'type' => 'text', 'validation' =>
            'nullable',
            'width' => 'col-sm-10',
            'help' => 'The receivers phone number in format: [Country Code Without + Sign][Phone Number]. Example: 628231xxxxxx,96777xxxxxx'];
        $this->form[] = ['label' => 'Text', 'name' => 'text', 'type' => 'textarea', 'validation' => 'required|string|min:5|max:5000', 'width' => 'col-sm-10'];
        $this->form[] = ['label' => 'Device', 'name' => 'id_device', 'type' => 'select2',
            'validation' => 'required', 'width' => 'col-sm-10',
            'datatable' => 'device,name', 'help' => 'Will show conneted device',
            'datatable_where' => 'status="connected"'];
        $this->form[] = ['label' => 'Message Type', 'name' => 'type',
            'type' => 'select', 'validation' => 'required', 'width' => 'col-sm-10',
            'value' => "Text",
            'dataenum' => 'Text;Image;Video;PDF', 'default' => 'Text'];
        $this->form[] = ['label' => 'File', 'name' => 'url_file', 'type' => 'upload', 'width' => 'col-sm-10'];
        # END FORM DO NOT REMOVE THIS LINE

        # OLD START FORM
        //$this->form = [];
        //$this->form[] = ['label'=>'Number','name'=>'number','type'=>'text','validation'=>'required|numeric|min:1','width'=>'col-sm-10','help'=>'The receiver phone number in format: [Country Code Without + Sign][Phone Number]. Example: 628231xxxxxx.'];
        //$this->form[] = ['label'=>'Text','name'=>'text','type'=>'textarea','validation'=>'required|string|min:5|max:5000','width'=>'col-sm-10'];
        //$this->form[] = ['label'=>'Device','name'=>'id_device','type'=>'select2','validation'=>'required','width'=>'col-sm-10','datatable'=>'device,name','help'=>'Will show conneted device','datatable_where'=>'status="connected"'];
        //$this->form[] = ['label'=>'Image','name'=>'urlimage','type'=>'upload','width'=>'col-sm-10'];
        # OLD END FORM

        $this->sub_module = array();
        $this->addaction = array();
        $this->button_selected = array();
        $this->alert = array();
        $this->index_button = array();
        $this->table_row_color = array();
        $this->index_statistic = array();
        $this->script_js = NULL;
        $this->pre_index_html = null;
        $this->post_index_html = null;
        $this->load_js = array();
        $this->style_css = NULL;
        $this->load_css = array();


    }

    public function actionButtonSelected($id_selected, $button_name)
    {

    }

    public function hook_query_index(&$query)
    {

    }

    public function hook_row_index($column_index, &$column_value)
    {
    }

    public function sendMessage(Request $request)

    {
        $requestData=request()->all();
        $d=$this->hook_before_add($requestData);
        return ($d);
    }

    public function hook_before_add(&$postdata)
    {

//        return dd($postdata);

        $getnumber = substr($postdata['number'], 1);
        $regional = 62;
        if ($getnumber == 0 || $getnumber == 8) {
            $format_number = $regional . substr($postdata['number'], 1);
        } else {
            $format_number = $postdata['number'];

        }

        $numbers = explode(',', $postdata['number']);

        if(isset($postdata['device_phone'])  and $postdata['device_phone']!=null)
        $device = DB::table('device')->select('name')
            ->where('status','connected')
            ->where('number', $postdata['device_phone'])->first();
        else
        $device = DB::table('device')->select('name')->where('status','connected')->where('id', $postdata['id_device'])->first();
        // echo "tipe pesan ".$postdata['type'];
        // Text;Image;Video;PDF
        // send text
        if (!$device)
        {
            return response()->json(['success'=>false,'message'=>'decice not connect'], 200, [], JSON_UNESCAPED_UNICODE);
        }
        if ($postdata['type'] == "Text") {
            $body = ['text' => $postdata['text']];
        } else if ($postdata['type'] == "Image") {
            $body = [
                'image' => ['url' => url($postdata['url_file'])],
                'caption' => $postdata['text']
            ];
        } else if ($postdata['type'] == "Video") {
            $body = [
                'video' => ['url' => url($postdata['url_file'])],
                'caption' => $postdata['text']
            ];
        } else if ($postdata['type'] == "PDF") {
            $body = [
                'document' => ['url' => url($postdata['url_file'])],
                'mimetype' => 'application/pdf',
                'fileName' => $postdata['fileName']??'document.pdf'
            ];
        }

        //send api
//            $response = Http::post(env('URL_WA_SERVER').'/chats/send?id='.$device->name, [
//                'receiver' => $format_number,
//                'message' => $body
//            ]);


        $mes = [];
        $groupNumbers = DB::table('phones')
            ->where('group_id',$postdata['group_id'])
            ->groupBy('number')
            ->get('number')
            ->pluck('number')->toArray();

        if (!$groupNumbers) ;
        $groupNumbers = [];

//        const templateButtons = [
//  {index: 1, urlButton: {displayText: '⭐ Star Baileys on GitHub!', url: 'https://github.com/adiwajshing/Baileys'}},
//  {index: 2, callButton: {displayText: 'Call me!', phoneNumber: '+1 (234) 5678-901'}},
//  {index: 3, quickReplyButton: {displayText: 'This is a reply, just like normal buttons!', id: 'id-like-buttons-message'}},
//]
//
//const buttonMessage = {
//        text: "Hi it's a template message",
//    footer: 'Hello World',
//    templateButtons: templateButtons,
//    image: {url: 'https://example.com/image.jpeg'}
//}

        $templateButtons = [
            ["index" => 1, "urlButton" => ["displayText" => '⭐ Star Baileys on GitHub!', "url" => 'https://github.com/adiwajshing/Baileys']],
            ["index" => 2, "callButton" => ["displayText" => 'Call me!', "phoneNumber" => '+1 (234) 5678-901']],
            ["index" => 3, "quickReplyButton" => ["displayText" => 'This is a reply, just like normal buttons!', "id" => 'id-like-buttons-message']],
        ];

        $buttonMessage = [
            "text" => "Hi it's a template message",
            "footer" => 'Hello World',
            "templateButtons" => $templateButtons,
            "image" => ["url" => 'https://images.pexels.com/photos/301599/pexels-photo-301599.jpeg']
        ];

//
//        $body = [
////            'text' => $postdata['text'],
//            'image' => ['url' =>"https://purepng.com/public/uploads/large/purepng.com-mariomariofictional-charactervideo-gamefranchisenintendodesigner-1701528634653vywuz.png"],
//            'caption' => $postdata['text']
//        ];

        $numbers = array_unique(array_merge($groupNumbers, $numbers));
        foreach ($numbers as $number)
            $mes[] = [
                'receiver' => $number,
                'message' => $body
            ];
        //send api
//        return dd($device);
        if (count($mes) > 0)
            $response = Http::post(env('URL_WA_SERVER') . '/chats/send-bulk?id=' . $device->name, $mes);
        $res = json_decode($response->getBody());
//        dd($res);

//        return dd($res);
        $postdata['status'] = $res->success;

        return  $res;

    }

    public function hook_after_add($id)
    {

    }

    public function hook_before_edit(&$postdata, $id)
    {

        $this->hook_before_add($postdata);

    }

    public function hook_after_edit($id)
    {

    }

    public function hook_before_delete($id)
    {

    }

    public function hook_after_delete($id)
    {

    }


}
