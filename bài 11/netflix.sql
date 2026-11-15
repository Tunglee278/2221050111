-- câu lệnh tạo database 
-- create database + tên database 
-- thêm (if not exists) để không bị báo lỗi trùng lặp trên db 

create database if not exists netflix;
-- bao gồm:

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);

-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);

-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);

-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50)
);
-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);

-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);

-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);

-- TẠO BẢNG
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);

create table if not exists dao_dien (
    id int auto_increment primary key, 
    ten_dao_dien varchar(50)
);

create table if not exists dien_vien (
    id int auto_increment primary key, 
    ten_dien_vien varchar(50)
);

create table if not exists the_loai (
    id int auto_increment primary key, 
    ten_the_loai varchar(50)
);

create table if not exists quoc_gia (
    id int auto_increment primary key, 
    ten_quoc_gia varchar(50)
);

create table if not exists nguoi_dung (
    id int auto_increment primary key, 
    ten_dang_nhap varchar(50),
    mat_khau varchar(30),
    email varchar(50),
    so_dien_thoai varchar(10)
);

create table if not exists phim_dien_vien (
    id int auto_increment primary key, 
    phim_id int,
    dien_vien_id int
);

create table if not exists phim_the_loai (
    id int auto_increment primary key, 
    phim_id int,
    the_loai_id int
);


-- Thêm dữ liệu vào các bảng
-- Phim
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('shinnosuke','60','2004','phim hai','4')
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('sieu nhan','80','2020','	
5 anh em sieu nhan','2')
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('avenger','180','2026','Biet doi bao thu','1')
INSERT INTO `phim`(`ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id`) VALUES ('Huyet nguc tu la','200','2018','Kinh di ve phieu luu cua 1 dam nhoc','3')

-- dao_dien
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`tran thanh`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`truong giang`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`le thanh tung`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`tungle`)
INSERT INTO `dao_dien`(`ten_dao_dien`) VALUES (`mimi`)

-- dien_vien
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`anh tuan atus`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`ninh duong lan ngoc`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`steven nguyen`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`hua quang han`)
INSERT INTO `dien_vien`(`ten_dien_vien`) VALUES (`quan ap`)

-- nguoi_dung
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('tungle', '569874', 'tungle@gmail.com', '0125364987')
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('concho', '445566', 'gogo@gmail.com', '0222233665')
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('gaoBac', '668899', 'gaobacff@gmail.com', '0111111111')
INSERT INTO 'nguoi_dung'('ten_dang_nhap', 'mat_khau', 'email', 'so_dien_thoai') VALUES ('com meo', '93586596', 'meomeo@gmail.com', '0333666999')

-- quoc_gia
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Viet nam')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Han quoc')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Trieu tien')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('Phap')
INSERT INTO 'quoc_gia'('ten_quoc_gia') VALUES ('US')

-- the_loai
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Hai')
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Kinh di')
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Tinh cam')
INSERT INTO 'the_loai'('ten_the_loai') VALUES ('Hanh dong')

-- Join bang phim và the_loai bằng bảng trung gian phim_the_loai
select * from phim p
join phim_the_loai ptl
on p.id = ptl.phim_id
join the_loai tl
on ptl.the_loai_id = tl.id
where p.id = 1

-- Join bang phim và dien_vien bằng bảng trung gian phim_dien_vien
select * from phim p
join phim_dien_vien pdv
on p.id = pdv.phim_id
join dien_vien dv
on pdv.dien_vien_id = dv.id
where p.id = 1

-- Thêm dữ liệu cho 2 bảng trung gian
-- phim_the_loai
INSERT INTO phim_the_loai (phim_id, the_loai_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4);

-- phim_dien_vien
INSERT INTO phim_dien_vien (phim_id, dien_vien_id)
VALUES
(1, 1),
(1, 2),
(2, 3);