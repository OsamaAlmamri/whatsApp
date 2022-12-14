@extends('customImport')
@section('custom_inputs')
    <div class='form-group'>
        <label>Group : </label>
        <select class='form-control'  name="group_id">
            @foreach($groups as  $group)
            <option value='{{$group->id}}'>{{$group->name}}</option>
            @endforeach
        </select>
        <div class='help-block'></div>
    </div>
@endsection
