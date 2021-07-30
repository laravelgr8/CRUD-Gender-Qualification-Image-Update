<x-template>
    <x-slot name="title">Home</x-slot>
    <div class="container">
        <div class="row">
            <div class="col-xl-4"> {{--signup form start--}}
                <form action="{{route('signup')}}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="">Name : </label>
                        <input type="text" name="name" class="form-control">
                        @error('name')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Email : </label>
                        <input type="text" name="email" class="form-control">
                        @error('email')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Password : </label>
                        <input type="text" name="password" class="form-control">
                        @error('password')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Mobile : </label>
                        <input type="text" name="mobile" class="form-control">
                        @error('mobile')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Gender : </label>
                        <input type="radio" name="gender" value="Male"> Male
                        <input type="radio" name="gender" value="Female"> Female
                        @error('gender')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Qualification : </label>
                        <input type="checkbox" name="qualification[]" value="MCA"> MCA
                        <input type="checkbox" name="qualification[]" value="BCA"> BCA
                        <input type="checkbox" name="qualification[]" value="B.Tech"> B.Tech
                        @error('qualification')
                            {{$message}}
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Image : </label>
                        <input type="file" name="pic" class="form-control">
                        @error('password')
                            {{$message}}
                        @enderror
                    </div>
                    <input type="submit" class="btn btn-primary">
                </form>
                @if (session()->has('msg'))
                    {{session('msg')}}
                @endif          
            </div> {{--signup form end--}}


            <div class="col-xl-8"> {{--all data show start--}}
                <table class="table table-striped" id="show"></table>
            </div> {{--all data show end--}}
        </div>
    </div>
    <div id="modal">{{-- edit model start --}}
        <div id="modal-form">
            <h2>Edit Form</h2>
            <form id="editForm">
                @csrf
                <input type="hidden" name="id" id="id">
                <div class="form-group">
                    <label for="">Name : </label>
                    <input type="text" name="name" id="name" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Email : </label>
                    <input type="text" name="email" id="email" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Mobile : </label>
                    <input type="text" name="mobile" id="mobile" class="form-control">
                </div>
                <div class="form-group">
                    <label for="">Gender : </label>
                    <input type="radio" name="gender" id="male" value="Male"> Male
                    <input type="radio" name="gender" id="female" value="Female"> Female
                </div>
                <div class="form-group">
                    <label for="">Qualification : </label>
                    <input type="checkbox" name="qualification[]" id="mca" value="MCA"> MCA
                    <input type="checkbox" name="qualification[]" id="bca" value="BCA"> BCA
                    <input type="checkbox" name="qualification[]" id="btech" value="B.Tech"> B.Tech
                </div>
                <div class="form-group">
                    <label for="">Image : </label>
                    <input type="file" name="pic" id="pic" class="form-control">
                    <input type="hidden" name="old_pic" id="old_pic">
                    <div id="image"></div>
                </div>
                <input type="submit" value="update" class="btn btn-warning">
            </form>       
        </div>
    </div>{{-- edit model end --}}
    <script src="{{asset('js/jquery.js')}}"></script>
    <script>
        $(document).ready(function(){
            // alert('');
            function show()
            {
                $.ajax({
                    url : '{{route("show")}}',
                    type: 'GET',
                    success:function(data)
                    {
                        // console.log(data.length);
                        var html="<thead><tr><th>ID</th><th>Name</th><th>Email</th><th>Gender</th><th>Mobile</th><th>Qualification</th><th>Action</th></tr></thead>";
                        var i;
                        for(i=0;i<data.length;i++)
                        {
                            var img="<img src='{{asset("image")}}/"+data[i].pic+"' style='width:80px;'>";
                            html+="<tr>"+
                            "<td>"+data[i].id+"</td>"+
                            "<td>"+data[i].name+"</td>"+
                            "<td>"+data[i].email+"</td>"+
                            "<td>"+data[i].gender+"</td>"+
                            "<td>"+data[i].mobile+"</td>"+
                            "<td>"+data[i].qualification+"</td>"+
                            "<td>"+img+"</td>"+
                            "<td><button class='btn btn-info' id='edit' data-eid='"+data[i].id+"'>Edit</button></td>"+
                            "</tr>";
                        }
                        $("#show").append(html);
                    }
                });
            }
            show();

            $(document).on("click","#edit",function(){
                $("#modal").show();
                var id=$(this).attr('data-eid');
                $.ajax({
                    url : '{{route("edit")}}',
                    type: 'GET',
                    data:{id:id},
                    success:function(data)
                    {
                        // var jdata=JSON.parse(data);
                        $("#id").val(data["id"]);
                        $("#name").val(data["name"]);
                        $("#email").val(data["email"]);
                        $("#mobile").val(data["mobile"]);
                        var gender=data["gender"];
                        if(gender=="Male")
                        {
                            $("#male").attr("checked",true);
                        }
                        if(gender=="Female")
                        {
                            $("#female").attr("checked",true);
                        }


                        var qualification=data["qualification"];
                        if(qualification.indexOf('MCA')!='-1')
                        {
                            $("#mca").attr("checked",true);
                        }
                        if(qualification.indexOf('BCA')!='-1')
                        {
                            $("#bca").attr("checked",true);
                        }
                        if(qualification.indexOf('B.Tech')!='-1')
                        {
                            $("#btech").attr("checked",true);
                        }
                        // console.log(gender);
                        $("#old_pic").val(data["pic"]);
                        var img="<img src='{{asset("image")}}/"+data['pic']+"' style='width:80px;'>";
                        $("#image").html(img);
                        // console.log(img);
                    }
                });   
            });


            //for update
            $("#editForm").on('submit',function(e){
                e.preventDefault();
                $.ajax({
                    url : '{{route("update")}}',
                    type : 'POST',
                    data:new FormData(this),
                    contentType:false,
                    cache:false,
                    processData:false,
                    success:function(data)
                    {
                        $("#modal").hide();
                        show();
                    }
                });
            });
        });
    </script>
</x-template>