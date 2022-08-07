<div class="modal-body">
    <form id="addForm" class="addForm" method="POST" enctype="multipart/form-data" action="{{route('points.update',$point->id)}}" >
        @csrf
   @method('put')
        <div class="form-group">
            <label for="number" class="form-control-label">عدد النقاط</label>
            <input type="number" class="form-control" value="{{$point->number_of_points}}" name="number_of_points" id="number">
        </div>
        <div class="form-group">
            <label for="price" class="form-control-label">السعر</label>
            <input type="number" class="form-control" value="{{$point->price}}" name="price" id="price">
        </div>

        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">اغلاق</button>
            <button type="submit" class="btn btn-primary" id="addButton">اضافة</button>
        </div>
    </form>
</div>
