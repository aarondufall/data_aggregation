-- ----------------------------
--  Table structure for files
-- ----------------------------
CREATE TABLE "public"."bars" (
  "id" UUID NOT NULL,
  "foo_id" UUID NOT NULL,
  "some_attribute" varchar(255)
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Primary key structure for table messages
-- ----------------------------
ALTER TABLE "public"."bars" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

