/*==============================================================*/
/* Database name:  bbsport                                      */
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/9/20 15:23:26                           */
/*==============================================================*/


drop database if exists bbsport;

/*==============================================================*/
/* Database: bbsport                                            */
/*==============================================================*/
create database bbsport;

use bbsport;

/*==============================================================*/
/* Table: bbs_addr                                              */
/*==============================================================*/
create table bbs_addr
(
   id                   int(11) not null auto_increment comment 'ID',
   buyer_id             varchar(40) not null comment '用户ID',
   name                 varchar(80) not null comment '收货人',
   city                 varchar(255) default NULL,
   addr                 varchar(400) not null comment '收货地址',
   phone                varchar(60) not null comment '手机号或是固定电话号',
   is_def               int(1) not null comment '是否默认',
   primary key (id),
   key buyer_id (buyer_id)
)
ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*==============================================================*/
/* Table: bbs_brand                                             */
/*==============================================================*/
create table bbs_brand
(
   id                   int(11) not null auto_increment comment 'ID',
   name                 varchar(40) not null comment '名称',
   description          varchar(80) default NULL comment '描述',
   img_url              varchar(80) default NULL comment '图片Url',
   web_site             varchar(80) default NULL comment '品牌网址',
   sort                 int(11) default NULL comment '排序:最大最排前',
   is_display           tinyint(1) default NULL comment '是否可见 1:可见 0:不可见',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='品牌';

/*==============================================================*/
/* Table: bbs_buyer                                             */
/*==============================================================*/
create table bbs_buyer
(
   username             varchar(18) not null comment '用户名',
   password             varchar(32) default NULL comment '密码',
   gender               varchar(8) default NULL,
   email                varchar(50) default NULL comment '邮箱',
   real_name            varchar(8) default NULL comment '真实名字',
   register_time        datetime default NULL comment '注册时间',
   province             varchar(11) default NULL comment '省ID',
   city                 varchar(11) default NULL comment '市ID',
   town                 varchar(11) default NULL comment '县ID',
   addr                 varchar(255) default NULL comment '地址',
   is_del               tinyint(1) default NULL comment '是否已删除:1:未,0:删除了',
   cityname             varchar(255) default NULL,
   phone                varchar(255) default NULL,
   provincename         varchar(255) default NULL,
   registerTime         datetime default NULL,
   townname             varchar(255) default NULL,
   primary key (username)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买者';

/*==============================================================*/
/* Table: bbs_city                                              */
/*==============================================================*/
create table bbs_city
(
   id                   int(11) not null auto_increment comment '主键',
   code                 char(6) not null comment '城市编码',
   name                 varchar(40) not null comment '城市名称',
   province             char(6) not null comment '所属省份编码',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=utf8 COMMENT='城市信息表';

/*==============================================================*/
/* Table: bbs_color                                             */
/*==============================================================*/
create table bbs_color
(
   id                   int(11) not null auto_increment comment 'ID',
   name                 varchar(20) default NULL comment '名称',
   parent_id            int(11) default NULL comment '父ID为色系',
   img_url              varchar(50) default NULL comment '颜色对应的衣服小图',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='颜色大全';

/*==============================================================*/
/* Table: bbs_detail                                            */
/*==============================================================*/
create table bbs_detail
(
   id                   int(11) not null auto_increment comment 'ID',
   order_id             int(11) not null comment '订单ID',
   product_no           varchar(255) default NULL comment '商品编号',
   product_name         varchar(255) default NULL comment '商品名称',
   color                varchar(11) not null comment ' 颜色名称',
   size                 varchar(11) not null comment '尺码',
   sku_price            double not null comment '商品销售价',
   amount               int(11) not null comment '购买数量',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COMMENT='订单详情';

/*==============================================================*/
/* Table: bbs_employee                                          */
/*==============================================================*/
create table bbs_employee
(
   id                   int(7) not null auto_increment,
   username             varchar(20) not null comment '用户名',
   password             varchar(20) not null comment '密码',
   degree               varchar(10) default NULL comment '学历',
   email                varchar(40) default NULL comment '邮箱',
   gender               tinyint(1) default NULL comment '性别 ',
   img_url              varchar(41) default NULL comment '图片(头像)',
   phone                varchar(18) default NULL comment '手机',
   real_name            varchar(8) default NULL comment '真实名字',
   school               varchar(20) default NULL comment '毕业学校',
   is_del               tinyint(1) not null comment '是否删除 1:未删除 0:删除',
   is_admin             tinyint(1) default NULL comment '是否是管理员',
   hire                 datetime default NULL,
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工';

/*==============================================================*/
/* Table: bbs_feature                                           */
/*==============================================================*/
create table bbs_feature
(
   id                   int(11) not null auto_increment comment 'ID',
   name                 varchar(255) default NULL comment '名称',
   value                varchar(255) default NULL,
   sort                 int(11) default NULL comment '前台排序',
   is_del               tinyint(1) default NULL comment '是否废弃:1:未废弃,0:废弃了',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='属性表';

/*==============================================================*/
/* Table: bbs_img                                               */
/*==============================================================*/
create table bbs_img
(
   id                   int(11) not null auto_increment,
   is_def               tinyint(4) default NULL,
   size                 bigint(20) not null,
   type                 varchar(255) default NULL,
   url                  varchar(255) default NULL,
   product_id           int(11) default NULL,
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: bbs_item                                              */
/*==============================================================*/
create table bbs_item
(
   id                   int(11) not null auto_increment,
   amount               int(11) default NULL,
   ischecked            bit(1) not null,
   skuPrice             double not null,
   skuUpperLimit        int(11) default NULL,
   xj                   double not null,
   buyer_id             varchar(255) default NULL,
   sku_id               int(11) default NULL,
   primary key (id)
)
ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*==============================================================*/
/* Table: bbs_order                                             */
/*==============================================================*/
create table bbs_order
(
   id                   int(11) not null auto_increment comment 'ID',
   oid                  varchar(36) not null comment '订单号',
   deliver_fee          decimal(10,2) not null comment '运费',
   payable_fee          double not null comment '应付金额',
   total_price          double not null comment '订单金额',
   payment_way          tinyint(1) not null comment '支付方式 0:到付 1:在线 2:邮局 3:公司转帐',
   payment_cash         tinyint(1) default NULL comment '货到付款方式.1现金,2POS刷卡',
   delivery             tinyint(1) default NULL comment '送货时间',
   isConfirm            tinyint(1) default NULL comment '是否电话确认 1:是  0: 否',
   is_paiy              tinyint(1) not null comment '支付状态 :0到付1待付款,2已付款,3待退款,4退款成功,5退款失败',
   state                tinyint(1) not null comment '订单状态 0:提交订单 1:仓库配货 2:商品出库 3:等待收货 4:完成 5待退货 6已退货',
   create_date          datetime not null comment '订单生成时间',
   note                 varchar(100) default NULL comment '附言',
   buyer_id             varchar(18) not null comment '用户名',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='订单';

/*==============================================================*/
/* Table: bbs_product                                           */
/*==============================================================*/
create table bbs_product
(
   id                   int(11) not null comment 'ID',
   no                   varchar(30) default NULL comment '商品编号',
   name                 varchar(255) not null comment '商品名称',
   weight               double(11,0) default NULL comment '重量 单位:克',
   is_new               tinyint(1) default NULL comment '是否新品:0:旧品,1:新品',
   is_hot               tinyint(1) default NULL comment '是否热销:0,否 1:是',
   is_commend           tinyint(1) default NULL comment '推荐 1推荐 0 不推荐',
   create_time          datetime default NULL comment '添加时间',
   create_user_id       varchar(255) default NULL comment '添加人ID',
   check_time           datetime default NULL comment '审核时间',
   check_user_id        varchar(255) default NULL comment '审核人ID',
   is_show              tinyint(1) default NULL comment '上下架:0否 1是',
   is_del               tinyint(1) default NULL comment '是否删除:0删除,1,没删除',
   type_id              int(11) default NULL comment '类型ID',
   brand_id             int(11) default NULL comment '品牌ID',
   keywords             varchar(255) default NULL comment '检索关键词',
   sales                int(11) default NULL comment '销量',
   description          longtext comment '商品描述',
   package_list         longtext comment '包装清单',
   feature              varchar(255) default NULL comment '商品属性集',
   color                varchar(255) default NULL comment '颜色集',
   size                 varchar(255) default NULL comment '尺寸集',
   img_url              varchar(255) default NULL,
   defImg               varchar(255) default NULL,
   price                double default NULL,
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='商品';

/*==============================================================*/
/* Table: bbs_province                                          */
/*==============================================================*/
create table bbs_province
(
   id                   int(11) not null auto_increment comment '主键',
   code                 char(6) not null comment '省份编码',
   name                 varchar(40) not null comment '省份名称',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='省份信息表';

/*==============================================================*/
/* Table: bbs_sku                                               */
/*==============================================================*/
create table bbs_sku
(
   id                   int(11) not null auto_increment comment 'ID',
   product_id           int(11) not null comment '商品ID',
   color_id             int(11) default NULL comment '颜色ID',
   size                 varchar(5) default NULL comment '尺码',
   delive_fee           double default NULL comment '运费 默认10元',
   sku_price            double(20,2) not null comment '售价',
   stock_inventory      int(5) not null comment '库存',
   sku_upper_limit      int(5) default NULL comment '购买限制',
   location             varchar(80) default NULL comment '仓库位置:货架号',
   sku_img              varchar(80) default NULL comment 'SKU图片  精确到颜色及尺码对应的图片',
   sku_sort             int(5) default NULL comment '前台显示排序',
   sku_name             varchar(500) default NULL comment 'SKU名称',
   market_price         double(20,2) default NULL comment '市场价',
   create_time          datetime default NULL,
   update_time          datetime default NULL,
   create_user_id       varchar(255) default NULL,
   update_user_id       varchar(255) default NULL,
   last_status          int(1) default NULL comment '0,历史 1最新',
   sku_type             int(1) default NULL comment '0:赠品,1普通',
   sales                int(10) default NULL comment '销量',
   createTime           datetime default NULL,
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=520 DEFAULT CHARSET=utf8 COMMENT='最小销售单元';

/*==============================================================*/
/* Table: bbs_town                                              */
/*==============================================================*/
create table bbs_town
(
   id                   int(11) not null auto_increment comment '主键',
   code                 char(6) not null comment '区县编码',
   name                 varchar(40) not null comment '区县名称',
   city                 char(6) not null comment '所属城市编码',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=3145 DEFAULT CHARSET=utf8 COMMENT='区县信息表';

/*==============================================================*/
/* Table: bbs_type                                              */
/*==============================================================*/
create table bbs_type
(
   id                   int(11) not null auto_increment comment 'ID',
   name                 varchar(36) not null comment '名称',
   parent_id            int(11) default NULL comment '父ID',
   note                 varchar(200) default NULL comment '备注,用于google搜索页面描述',
   is_display           tinyint(1) not null comment '是否可见 1:可见 0:不可见',
   primary key (id)
)
ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品类型';

alter table bbs_color add constraint FKpjady97w1utow4k2y8qburuuo foreign key (parent_id)
      references bbs_color (id);

alter table bbs_item add constraint FKpmxb1l1p4jib5wtauduerrhhk foreign key (buyer_id)
      references bbs_buyer (username);

alter table bbs_order add constraint bbs_order_ibfk_1 foreign key (buyer_id)
      references bbs_buyer (username);

alter table bbs_product add constraint FK_Reference_8 foreign key (type_id)
      references bbs_type (id) on delete restrict on update restrict;

alter table bbs_product add constraint bbs_product_ibfk_2 foreign key (brand_id)
      references bbs_brand (id);

alter table bbs_sku add constraint bbs_sku_ibfk_1 foreign key (product_id)
      references bbs_product (id);

alter table bbs_sku add constraint bbs_sku_ibfk_2 foreign key (color_id)
      references bbs_color (id);

alter table bbs_type add constraint FK2nxg9ghfdskspnaornkucojno foreign key (parent_id)
      references bbs_type (id);




