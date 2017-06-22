-- ----------------------------
--  Table structure for files
-- ----------------------------
CREATE TABLE "public"."consumers" (
  "catagory_name" varchar(255) NOT NULL,
  "position" int4 NOT NULL
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Primary key structure for table messages
-- ----------------------------
ALTER TABLE "public"."consumers" ADD PRIMARY KEY ("catagory_name") NOT DEFERRABLE INITIALLY IMMEDIATE;
