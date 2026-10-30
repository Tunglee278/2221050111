var danhSachPhim = [
    {
        id:1,
        duongDanAnh:"banner.jpg",

    },
    {
        id:2,
        duongDanAnh:"banner.jpg",

    },
    {
        id:3,
        duongDanAnh:"banner.jpg",

    },
    {
        id:4,
        duongDanAnh:"banner.jpg",

    },
    {
        id:5,
        duongDanAnh:"banner.jpg",

    },
    {
        id:6,
        duongDanAnh:"banner 1.jpg",

    },
    {
        id:7,
        duongDanAnh:"banner 2.jpg",

    },
    {
        id:8,
        duongDanAnh:"banner 3.jpg",

    },
    {
        id:9,
        duongDanAnh:"banner 4.jpg",

    },
    {
        id:10,
        duongDanAnh:"banner 5.jpg",

    },
    {
        id:11,
        duongDanAnh:"marvel 1.jpg",

    },
    {
        id:12,
        duongDanAnh:"marvel 6.jpg",

    },
    {
        id:13,
        duongDanAnh:"marvel 4.jpg",

    },
    {
        id:14,
        duongDanAnh:"marvel 5.jpg",

    },
    {
        id:15,
        duongDanAnh:"marvel 7.jpg",

    },
]

function chonAnh(id){
    for(var i = 0; i < danhSachPhim.length; i++){
        if(danhSachPhim[i].id==id){
            document.getElementsByClassName("banner-img")[0].src = danhSachPhim[i].duongDanAnh
        }
    }
}