<script src="{{asset('assets/site/JS')}}/popper.min.js"></script>
<script src="{{asset('assets/site/JS')}}/jquery-3.6.0.min.js"></script>
<script src="{{asset('assets/site/JS')}}/bootstrap.bundle.min.js"></script>
<script src="{{asset('assets/site/JS')}}/all.min.js"></script>
<script src="{{asset('assets/site/JS')}}/main.js"></script>
<script>
    window.addEventListener('online', () =>{
        // window.location.reload();
        toastr.success('تم استعادة الاتصال بالانترنت');
    });
    window.addEventListener('offline', () =>{
        toastr.error('انقطع الاتصال , يرجي التحقق من جودة الانترنت لديك');
    });
</script>
<script src="{{asset('assets/admin')}}/assets/iconfonts/eva.min.js"></script>

