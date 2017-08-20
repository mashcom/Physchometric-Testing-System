@extends('layouts.app')

@section('content')
<section class="content-header">
      <h1 class="text-center text-light" style="font-size:40px">
        {{ $test->name }}
      </h1>
      <h5 class="text-center text-bold col-lg-6 col-lg-offset-3">{{ $test->description }}</h5>
      <br/>
    </section>
<div class="col-lg-12">
  <div class="col-lg-7">
   
    @foreach($questions as $k=>$q)

      @if($q->illustration !="")
       <img class='illustration-img' src=<?php echo "http://localhost/laravel/blog/storage/app/".$q->illustration ?>>
      @endif
    <div class="radio">
        <p class="text-black h5">Q: {{$q->content}}</p>
        @foreach(json_decode($q->answers) as $key=>$answer) 
        <label>
            <input type="radio" name="optionsRadios" value="{{$key}}"><b>{{$key}}</b>: {{$answer}}</input>
        </label>
      <br/>
        @endforeach
    </div>
      <a href="#" class="btn btn-md btn-danger text-bold">Delete</a>
      <a href="#" class="btn btn-md btn-primary text-bold">Update</a>
 
 <br/>

    @endforeach
  </div>

  <!--input-->
  <div class="bdox boxddefault col-lg-5 bg-gray">
            <form  method="post" action="{{ url('/admin/test')}}" enctype="multipart/form-data">
               {{ csrf_field() }}
              <div class="box-body">
                 <input type="hidden" class="form-control" name="id" value={{$test->id}}>
                <div class="form-group{{ $errors->has('content') ? ' has-error' : '' }}">
                  <label for="exampleInputEmail1">Question</label>
                  <textarea rows=5 type="text" class="form-control" name="content"></textarea>
                   @if ($errors->has('content'))
                    <span class="help-block text-bold text-danger">{{ $errors->first('content') }}</span>
                  @endif
                </div>

                 <div class="form-group">
                  <label for="exampleInputEmail1">Possible Answers</label>
                  <div class="input-group">
                    <span class="input-group-addon text-bold">A</span>
                      <input type="text" name="a" class="form-control">
                       @if ($errors->has('a'))
                    <span class="help-block text-bold text-danger">{{ $errors->first('a') }}</span>
                  @endif
                  </div>
                  <div class="input-group">
                    <span class="input-group-addon text-bold">B</span>
                      <input type="text" name="b" class="form-control">
                       @if ($errors->has('b'))
                    <span class="help-block text-bold text-danger">{{ $errors->first('b') }}</span>
                  @endif
                  </div>
                  <div class="input-group">
                    <span class="input-group-addon text-bold">C</span>
                      <input type="text" name="c" class="form-control">
                       @if ($errors->has('c'))
                    <span class="help-block text-bold text-danger">{{ $errors->first('c') }}</span>
                  @endif
                  </div>
                  <div class="input-group">
                    <span class="input-group-addon text-bold">D</span>
                      <input type="text" name="d" class="form-control">
                       @if ($errors->has('d'))
                    <span class="help-block text-bold text-danger">{{ $errors->first('d') }}</span>
                  @endif
                  </div>
                   <div class="input-group">
                    <span class="input-group-addon text-bold">E</span>
                      <input type="text" name="e" class="form-control">
                  </div>

                 </div>


                <div class="form-group">
                  <label for="">Correct Answer</label>
                   <select  class="form-control" name="correct_answer">
                    <option>A</option>
                    <option>B</option>
                    <option>C</option>
                    <option>D</option>
                    <option>E</option>
                   </select>
               
                </div>

                <div class="form-group">
                  <label for="exampleInputFile">Illustration</label>
                  <input type="file" name="illustration">

                </div>
                
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary btn-lg btnf-block">Save Question</button>
              </div>
            </form>
          </div>
    
</div>
@endsection
