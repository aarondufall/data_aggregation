-- ----------------------------
--  Table structure for files
-- ----------------------------
CREATE TABLE "public"."foos" (
  "id" UUID NOT NULL,
  "some_attribute" varchar(255),
  "version" int4 NOT NULL
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Primary key structure for table messages
-- ----------------------------
ALTER TABLE "public"."foos" ADD PRIMARY KEY ("id") NOT DEFERRABLE INITIALLY IMMEDIATE;

