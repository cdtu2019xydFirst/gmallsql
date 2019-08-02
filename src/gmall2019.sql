-- oms_cart_item
CREATE TABLE oms_cart_item (
  id                  INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_id          INTEGER(20),
  product_sku_id      INTEGER(20),
  member_id           INTEGER(20),
  quantity            INTEGER(30),
  price               INTEGER(20),
  sp1                 VARCHAR(255),
  sp2                 VARCHAR(255),
  sp3                 VARCHAR(255),
  product_pic         VARCHAR(500),
  product_name        VARCHAR(255),
  product_sub_title   VARCHAR(30),
  create_date         DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  delete_status       INTEGER(1),
  product_category_id INTEGER(20),
  product_brand       VARCHAR(100),
  product_sn          VARCHAR(500),
  product_attr        VARCHAR(200),
  cart_all_price      VARCHAR(255),
  is_checked          INTEGER(1)
);

ALTER TABLE oms_cart_item
  ADD CONSTRAINT PK_oms_cart_item_id PRIMARY KEY (id);

-- oms_company_address
CREATE TABLE oms_company_address (
  id             INTEGER(20) /*auto_increment*/
    NOT NULL,
  address_name   VARCHAR(100),
  send_status    INTEGER(1),
  receive_status INTEGER(1),
  NAME           VARCHAR(100),
  phone          VARCHAR(64),
  province       VARCHAR(64),
  city           VARCHAR(64),
  region         VARCHAR(64),
  detail_address VARCHAR(64)
);

ALTER TABLE oms_company_address
  ADD CONSTRAINT PK_oms_company_address_id PRIMARY KEY (id);

-- oms_order
/*
警告: 字段名可能非法 - status
*/
CREATE TABLE oms_order (
  id                      INTEGER(20) /*auto_increment*/
    NOT NULL,
  member_id               INTEGER(20),
  coupon_id               INTEGER(20),
  order_sn                VARCHAR(64),
  create_time             DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  member_username         VARCHAR(64),
  total_amount            VARCHAR(200),
  pay_amount              VARCHAR(200),
  freight_amount          VARCHAR(200),
  promotion_amount        VARCHAR(200),
  integration_amount      VARCHAR(200),
  coupon_amount           VARCHAR(200),
  discount_amount         VARCHAR(200),
  pay_type                INTEGER(1),
  source_type             INTEGER(1),
  STATUS                  INTEGER(1),
  order_type              INTEGER(1),
  delivery_company        VARCHAR(100),
  delivery_sn             VARCHAR(100),
  auto_config_day         VARCHAR(100),
  integration             VARCHAR(100),
  growth                  VARCHAR(100),
  promotion_info          VARCHAR(100),
  bill_type               INTEGER(1),
  bill_header             VARCHAR(255),
  bill_content            VARCHAR(255),
  bill_receiver_phone     VARCHAR(32),
  bill_receiver_email     VARCHAR(64),
  receiver_name           VARCHAR(100),
  receiver_phone          VARCHAR(32),
  receiver_post_code      VARCHAR(32),
  receiver_province       VARCHAR(32),
  receiver_city           VARCHAR(32),
  receiver_region         VARCHAR(32),
  receiver_detail_address VARCHAR(255),
  note                    VARCHAR(500),
  confirm_status          INTEGER(1),
  delete_status           INTEGER(1),
  use_integration         VARCHAR(100),
  payment_time            DATETIME(10),
  delivery_time           DATETIME(10),
  receive_time            DATETIME(10),
  comment_time            DATETIME(10),
  modify_time             DATETIME(10)
);

ALTER TABLE oms_order
  ADD CONSTRAINT PK_oms_order_id PRIMARY KEY (id);

-- oms_order_item
CREATE TABLE oms_order_item (
  id                  INTEGER(20) /*auto_increment*/
    NOT NULL,
  order_id            INTEGER(20),
  order_sn            VARCHAR(64),
  product_id          INTEGER(20),
  product_pic         VARCHAR(100),
  product_name        VARCHAR(64),
  product_brand       VARCHAR(64),
  product_sn          VARCHAR(500),
  product_price       NUMERIC(12, 2),
  product_quantity    INTEGER(20),
  product_sku_id      INTEGER(20),
  product_sku_code    VARCHAR(100),
  product_category_id INTEGER(20),
  sp1                 VARCHAR(64),
  sp2                 VARCHAR(64),
  sp3                 VARCHAR(64)
);

ALTER TABLE oms_order_item
  ADD CONSTRAINT PK_oms_order_item_id PRIMARY KEY (id);

-- payment_info
CREATE TABLE payment_info (
  id               INTEGER(20) /*auto_increment*/
    NOT NULL,
  order_sn         VARCHAR(255),
  order_id         INTEGER(20),
  alipay_trade_no  VARCHAR(100),
  total_amount     VARCHAR(100),
  SUBJECT          VARCHAR(100),
  payment_status   VARCHAR(20),
  create_time      DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  confirm_time     DATETIME(10),
  callback_content VARCHAR(2000),
  callback_time    DATETIME(10)
);

ALTER TABLE payment_info
  ADD CONSTRAINT PK_payment_info_id PRIMARY KEY (id);

-- pms_base_attr_info
CREATE TABLE pms_base_attr_info (
  id          INTEGER(20) /*auto_increment*/
    NOT NULL,
  attr_name   VARCHAR(100),
  catalog3_id INTEGER(20),
  is_enabled  VARCHAR(1)
);

ALTER TABLE pms_base_attr_info
  ADD CONSTRAINT PK_pms_base_attr_info_id PRIMARY KEY (id);

-- pms_base_attr_value
CREATE TABLE pms_base_attr_value (
  id         INTEGER(20) /*auto_increment*/
    NOT NULL,
  value_name VARCHAR(100),
  attr_id    INTEGER(20),
  is_enabled VARCHAR(1)
);

ALTER TABLE pms_base_attr_value
  ADD CONSTRAINT PK_pms_base_attr_value_id PRIMARY KEY (id);

-- pms_base_catalog1
CREATE TABLE pms_base_catalog1 (
  id   INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME VARCHAR(255)
);

ALTER TABLE pms_base_catalog1
  ADD CONSTRAINT PK_pms_base_catalog1_id PRIMARY KEY (id);

-- pms_base_catalog2
CREATE TABLE pms_base_catalog2 (
  id          INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME        VARCHAR(255),
  catalog1_id INTEGER(20)
);

ALTER TABLE pms_base_catalog2
  ADD CONSTRAINT PK_pms_base_catalog2_id PRIMARY KEY (id);

-- pms_base_catalog3
CREATE TABLE pms_base_catalog3 (
  id          INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME        VARCHAR(255),
  catalog2_id INTEGER(20)
);

ALTER TABLE pms_base_catalog3
  ADD CONSTRAINT PK_pms_base_catalog3_id PRIMARY KEY (id);

-- pms_base_sale_attr
CREATE TABLE pms_base_sale_attr (
  id   INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME VARCHAR(255)
);

ALTER TABLE pms_base_sale_attr
  ADD CONSTRAINT PK_pms_base_sale_attr_id PRIMARY KEY (id);

-- pms_brand
CREATE TABLE pms_brand (
  id                    INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME                  VARCHAR(100),
  first_letter          VARCHAR(100),
  sort                  VARCHAR(100),
  factory_status        VARCHAR(1),
  show_status           VARCHAR(1),
  product_count         INTEGER(20),
  product_comment_count INTEGER(20),
  logo                  VARCHAR(255),
  big_pic               VARCHAR(100),
  brand_story           VARCHAR(100)
);

ALTER TABLE pms_brand
  ADD CONSTRAINT PK_pms_brand_id PRIMARY KEY (id);

-- pms_comment
CREATE TABLE pms_comment (
  id                INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_id        INTEGER(20),
  member_nick_name  VARCHAR(30),
  product_name      VARCHAR(100),
  star              VARCHAR(100),
  member_ip         VARCHAR(100),
  create_time       DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  show_status       VARCHAR(1),
  product_attribute VARCHAR(100),
  collect_count     INTEGER(20),
  read_count        INTEGER(20),
  pics              VARCHAR(255),
  member_icon       VARCHAR(500),
  replay_count      INTEGER(20),
  content           VARCHAR(255)
);

ALTER TABLE pms_comment
  ADD CONSTRAINT PK_pms_comment_id PRIMARY KEY (id);

-- pms_comment_replay
/*
警告: 字段名可能非法 - type
*/
CREATE TABLE pms_comment_replay (
  id               INTEGER(20) /*auto_increment*/
    NOT NULL,
  comment_id       INTEGER(20),
  member_nick_name VARCHAR(100),
  member_icon      VARCHAR(500),
  content          VARCHAR(255),
  create_time      DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  type             VARCHAR(255)
);

ALTER TABLE pms_comment_replay
  ADD CONSTRAINT PK_pms_comment_replay_id PRIMARY KEY (id);

-- pms_product_image
CREATE TABLE pms_product_image (
  id         INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_id INTEGER(20),
  img_name   VARCHAR(100),
  img_url    VARCHAR(255)
);

ALTER TABLE pms_product_image
  ADD CONSTRAINT PK_pms_product_image_id PRIMARY KEY (id);

-- pms_product_info
CREATE TABLE pms_product_info (
  id           INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_name VARCHAR(255),
  description  VARCHAR(255),
  catalog3_id  INTEGER(20),
  tm_id        INTEGER(20)
);

ALTER TABLE pms_product_info
  ADD CONSTRAINT PK_pms_product_info_id PRIMARY KEY (id);

-- pms_product_sale_attr
CREATE TABLE pms_product_sale_attr (
  id             INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_id     INTEGER(20),
  sale_attr_id   INTEGER(20),
  sale_attr_name VARCHAR(255)
);

ALTER TABLE pms_product_sale_attr
  ADD CONSTRAINT PK_pms_prottr_idA70B PRIMARY KEY (id);

-- pms_product_sale_attr_value
CREATE TABLE pms_product_sale_attr_value (
  id                   INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_id           INTEGER(20),
  sale_attr_id         INTEGER(20),
  sale_attr_value_name VARCHAR(255)
);

ALTER TABLE pms_product_sale_attr_value
  ADD CONSTRAINT PK_pms_prolue_id2D58 PRIMARY KEY (id);

-- pms_product_vertify_record
/*
警告: 字段名可能非法 - status
*/
CREATE TABLE pms_product_vertify_record (
  id          INTEGER(20) /*auto_increment*/
    NOT NULL,
  product_id  INTEGER(20),
  create_time DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  vertify_man VARCHAR(100),
  STATUS      VARCHAR(1),
  detail      VARCHAR(100)
);

ALTER TABLE pms_product_vertify_record
  ADD CONSTRAINT PK_pms_proord_id4F2A PRIMARY KEY (id);

-- pms_sku_attr_value
CREATE TABLE pms_sku_attr_value (
  id       INTEGER(20) /*auto_increment*/
    NOT NULL,
  attr_id  INTEGER(20),
  value_id INTEGER(20),
  sku_id   INTEGER(20)
);

ALTER TABLE pms_sku_attr_value
  ADD CONSTRAINT PK_pms_sku_attr_value_id PRIMARY KEY (id);

-- pms_sku_image
CREATE TABLE pms_sku_image (
  id             INTEGER(20) /*auto_increment*/
    NOT NULL,
  sku_id         INTEGER(20),
  img_name       VARCHAR(100),
  img_url        VARCHAR(255),
  product_img_id INTEGER(20),
  is_default     VARCHAR(1)
);

ALTER TABLE pms_sku_image
  ADD CONSTRAINT PK_pms_sku_image_id PRIMARY KEY (id);

-- pms_sku_info
CREATE TABLE pms_sku_info (
  id              INTEGER(20) /*auto_increment*/
                               NOT NULL,
  product_id      INTEGER(20),
  price           INTEGER(20),
  sku_name        VARCHAR(100) NOT NULL,
  sku_desc        VARCHAR(255),
  weight          NUMERIC(12, 2),
  tm_id           INTEGER(20),
  catalog3_id     INTEGER(20),
  sku_default_img VARCHAR(255)
);

ALTER TABLE pms_sku_info
  ADD CONSTRAINT PK_pms_sku_info_id PRIMARY KEY (id);

-- pms_sku_sale_attr_value
CREATE TABLE pms_sku_sale_attr_value (
  id                   INTEGER(20) /*auto_increment*/
    NOT NULL,
  sku_id               INTEGER(20),
  sale_attr_id         INTEGER(20),
  sale_attr_value_id   INTEGER(20),
  sale_attr_name       VARCHAR(255),
  sale_attr_value_name VARCHAR(255)
);

ALTER TABLE pms_sku_sale_attr_value
  ADD CONSTRAINT PK_pms_skulue_idD644 PRIMARY KEY (id);

-- ums_member
/*
警告: 字段名可能非法 - password
警告: 字段名可能非法 - status
*/
CREATE TABLE ums_member (
  id                     INTEGER(20) /*auto_increment*/
    NOT NULL,
  member_level_id        INTEGER(20),
  username               VARCHAR(100),
  PASSWORD               VARCHAR(100),
  nickname               VARCHAR(100),
  phone                  VARCHAR(100),
  STATUS                 INTEGER(1),
  create_time            DATETIME(19) DEFAULT CURRENT_TIMESTAMP,
  icon                   VARCHAR(500),
  gender                 INTEGER(1),
  birthday               DATETIME(10),
  city                   VARCHAR(100),
  job                    VARCHAR(100),
  personalized_signature VARCHAR(255),
  source_uid             INTEGER(20),
  source_type            INTEGER(1),
  integration            INTEGER,
  growth                 INTEGER,
  luckey_count           INTEGER,
  history_integration    INTEGER,
  access_token           VARCHAR(255),
  access_code            VARCHAR(255)
);

ALTER TABLE ums_member
  ADD CONSTRAINT PK_ums_member_id PRIMARY KEY (id);

-- ums_member_level
CREATE TABLE ums_member_level (
  id                      INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME                    VARCHAR(100),
  growth_point            VARCHAR(100),
  default_status          INTEGER(1),
  free_freight_point      VARCHAR(100),
  comment_growth_point    VARCHAR(100),
  priviledge_free_freight INTEGER(20),
  priviledge_sign_in      VARCHAR(255),
  priviledge_comment      VARCHAR(255),
  priviledge_promotion    VARCHAR(255),
  priviledge_member_price NUMERIC(12, 2),
  priviledge_birthday     DATETIME(10),
  note                    VARCHAR(255)
);

ALTER TABLE ums_member_level
  ADD CONSTRAINT PK_ums_member_level_id PRIMARY KEY (id);

-- ums_member_receive_address
CREATE TABLE ums_member_receive_address (
  id             INTEGER(20) /*auto_increment*/
    NOT NULL,
  member_id      INTEGER(20),
  NAME           VARCHAR(100),
  phone_number   VARCHAR(64),
  default_status INTEGER(1),
  post_code      VARCHAR(100),
  province       VARCHAR(100),
  city           VARCHAR(100),
  region         VARCHAR(100),
  detail_address VARCHAR(128)
);

ALTER TABLE ums_member_receive_address
  ADD CONSTRAINT PK_ums_memess_idDDB9 PRIMARY KEY (id);

-- wms_ware_info
CREATE TABLE wms_ware_info (
  id       INTEGER(20) /*auto_increment*/
    NOT NULL,
  NAME     VARCHAR(100),
  address  VARCHAR(100),
  areacode VARCHAR(100)
);

ALTER TABLE wms_ware_info
  ADD CONSTRAINT PK_wms_ware_info_id PRIMARY KEY (id);

-- wms_ware_order_task
CREATE TABLE wms_ware_order_task (
  id                INTEGER(20) /*auto_increment*/
    NOT NULL,
  order_id          INTEGER(20),
  consignee         VARCHAR(100),
  consignee_tel     VARCHAR(100),
  consignee_address VARCHAR(100)
);

ALTER TABLE wms_ware_order_task
  ADD CONSTRAINT PK_wms_ware_order_task_id PRIMARY KEY (id);

