            var danhSachBaiHat = [
            {
                id: 1,
                ten:"ĐỢI (2023 Remaster) / VŨ. (Official Visualizer)",
                duongDanAnh:"doi2023.jpg",
                duongDanYoutube:"https://www.youtube.com/embed/DF57Ki04vD8?si=s_0_tEH9bwQcR2ru"
            },

            {
                id: 2,
                ten:"Hành tinh song song // Vũ. (Official Audio)",
                duongDanAnh:"htss.jpg",
                duongDanYoutube:"https://www.youtube.com/embed/Bmo4PSbB8E8?si=fjv3tMozqoTD4ZeI"
            },

            {
                id: 3,
                ten:"VŨ. - MỘT VẠN NĂM CONCERT TOUR | HÀ NỘI 2022 - FULL SHOW",
                duongDanAnh:"mot-van-nam.jpg",
                duongDanYoutube:"https://www.youtube.com/embed/RKDSHLlZW7g?si=YqeUMM8DwfXdF29c" 
            },
            
            {
                id: 4,
                ten:"VŨ. - BẢO TÀNG CỦA NUỐI TIẾC CONCERT TOUR 2024 | FULL SHOW",
                duongDanAnh:"bao-tang-cua-nuoi-tiec.jpg",
                duongDanYoutube:"https://www.youtube.com/embed/s-IYk-bdlgE?si=EVMBIdwuxdWV0kRf"
            }
        ];

function chonBai(id){
    for(let i = 0; i < danhSachBaiHat.length; i++){
        if(danhSachBaiHat[i].id == id){
            document.getElementsByClassName("video")[0].src = danhSachBaiHat[i].duongDanYoutube
        }
    }
}