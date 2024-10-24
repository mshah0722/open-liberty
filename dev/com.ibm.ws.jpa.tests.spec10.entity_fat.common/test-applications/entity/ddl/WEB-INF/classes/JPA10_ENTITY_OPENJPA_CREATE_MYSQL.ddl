CREATE TABLE ${schemaname}.OPENJPA_SEQUENCES_TABLE (ID VARCHAR(255) NOT NULL, SEQUENCE_VALUE BIGINT, PRIMARY KEY (ID)) ENGINE = innodb;
CREATE TABLE ${schemaname}.OPENJPA_SEQUENCE_TABLE (ID TINYINT NOT NULL, SEQUENCE_VALUE BIGINT, PRIMARY KEY (ID)) ENGINE = innodb;

CREATE TABLE ${schemaname}.AnnEmbedMultiTableEnt (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.AnnMSCMultiTableEnt (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.AnnMultiTableEnt (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.DatatypeSupPropTestEntity (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault INTEGER, charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.DatatypeSupTestEntity (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault INTEGER, charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.EmbeddableIdEntity (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (country, id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.EmbeddedObjectAOEntity (id INTEGER NOT NULL, localIntVal INTEGER, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal INTEGER, doubleVal DOUBLE, floatVal REAL, intValCol INTEGER, longValCol BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.EmbeddedObjectEntity (id INTEGER NOT NULL, localIntVal INTEGER, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal INTEGER, doubleVal DOUBLE, floatVal REAL, intVal INTEGER, longVal BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.IdClassEntity (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (country, id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityByte (pkey TINYINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityByteWrapper (pkey TINYINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityChar (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityCharacterWrapper (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityInt (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityIntWrapper (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityJavaSqlDate (pkey DATE NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityJavaUtilDate (pkey DATE NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityLong (pkey BIGINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityLongWrapper (pkey BIGINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityShort (pkey SMALLINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityShortWrapper (pkey SMALLINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKEntityString (pkey VARCHAR(255) NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKGenAutoEntity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKGenIdentityEntity (id INTEGER NOT NULL AUTO_INCREMENT, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKGenTableType1Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKGenTableType2Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKGenTableType3Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.PKGenTableType4Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.ReadOnlyEntity (id INTEGER NOT NULL, intVal INTEGER, noInsertIntVal INTEGER, noUpdatableIntVal INTEGER, readOnlyIntVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.SEC_TABLE1 (id INTEGER, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255)) ENGINE = innodb;
CREATE TABLE ${schemaname}.SEC_TABLE2AMSC (id INTEGER, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255)) ENGINE = innodb;
CREATE TABLE ${schemaname}.SEC_TABLEEMB (id INTEGER, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255)) ENGINE = innodb;
CREATE TABLE ${schemaname}.SerialDatatypeSupPropTE (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault INTEGER, charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.SerialDatatypeSupTE (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault INTEGER, charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.TableIDGen4Table (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME)) ENGINE = innodb;
CREATE TABLE ${schemaname}.TableIDGenTable (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedIntEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedIntWrapperEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedLongEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedLongWrapperEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedShortEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedShortWrapperEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.VersionedSqlTimestampEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version DATETIME, PRIMARY KEY (id)) ENGINE = innodb;

CREATE TABLE ${schemaname}.XMLDatatypeSupPropTestEntity (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault INTEGER, charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLDatatypeSupTestEntity (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault INTEGER, charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLEmbeddableIdEntity (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (country, id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLEmbeddedObjectAOEntity (id INTEGER NOT NULL, localIntVal INTEGER, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal INTEGER, doubleVal DOUBLE, floatVal REAL, intValCol INTEGER, longValCol BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLEmbeddedObjectEntity (id INTEGER NOT NULL, localIntVal INTEGER, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal INTEGER, doubleVal DOUBLE, floatVal REAL, intVal INTEGER, longVal BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLEmbedMultiTableEnt (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLIdClassEntity (country VARCHAR(255) NOT NULL, id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (country, id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLMSCMultiTableEnt (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLMultiTableEnt (id INTEGER NOT NULL, name VARCHAR(255), PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityByte (pkey TINYINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityByteWrapper (pkey TINYINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityChar (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityCharacterWrapper (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityInt (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityIntWrapper (pkey INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityJavaSqlDate (pkey DATE NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityJavaUtilDate (pkey DATE NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityLong (pkey BIGINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityLongWrapper (pkey BIGINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityShort (pkey SMALLINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityShortWrapper (pkey SMALLINT NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKEntityString (pkey VARCHAR(255) NOT NULL, intVal INTEGER, PRIMARY KEY (pkey)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKGenAutoEntity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKGenIdentityEntity (id INTEGER NOT NULL AUTO_INCREMENT, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKGenTableType1Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKGenTableType2Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKGenTableType3Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLPKGenTableType4Entity (id INTEGER NOT NULL, intVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLReadOnlyEntity (id INTEGER NOT NULL, intVal INTEGER, noInsertIntVal INTEGER, noUpdatableIntVal INTEGER, readOnlyIntVal INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLSerialDatatypeSupPropTE (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault INTEGER, charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLSerialDatatypeSupTE (id INTEGER NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault BLOB, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault BLOB, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault INTEGER, charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault INTEGER, doubleAttrDefault DOUBLE, doubleWrapperAttrDefault DOUBLE, enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INTEGER, integerWrapperAttrDefault INTEGER, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass BLOB, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATE, sqlTimeAttrDefault TIME, sqlTimestampAttrDefault DATETIME, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATE, utilDateAttrDefault DATE, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLTableIDGen4Table (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLTableIDGenTable (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedIntEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedIntWrapperEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version INTEGER, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedLongEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedLongWrapperEnt (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedShortEntity (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedShortWrapperEnt (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XMLVersionedSqlTimestampEnt (id INTEGER NOT NULL, intVal INTEGER, stringVal VARCHAR(255), version DATETIME, PRIMARY KEY (id)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XSEC_TABLE1 (id INTEGER, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XSEC_TABLE2AMSC (id INTEGER, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255)) ENGINE = innodb;
CREATE TABLE ${schemaname}.XSEC_TABLEEMB (id INTEGER, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255)) ENGINE = innodb;

INSERT INTO ${schemaname}.TableIDGenTable  (GEN_NAME, GEN_VAL) values ('TableType3Generator', 0);
INSERT INTO ${schemaname}.TableIDGen4Table (GEN_NAME, GEN_VAL) values ('TableType4Generator', 0);
INSERT INTO ${schemaname}.XMLTableIDGenTable  (GEN_NAME, GEN_VAL) values ('XMLTableType3Generator', 0);
INSERT INTO ${schemaname}.XMLTableIDGen4Table (GEN_NAME, GEN_VAL) values ('XMLTableType4Generator', 0);

CREATE INDEX ${schemaname}.I_SC_TBL1_ID ON ${schemaname}.SEC_TABLE1 (id);
CREATE INDEX ${schemaname}.I_SC_TMSC_ID ON ${schemaname}.SEC_TABLE2AMSC (id);
CREATE INDEX ${schemaname}.I_SC_TLMB_ID ON ${schemaname}.SEC_TABLEEMB (id);
CREATE INDEX ${schemaname}.I_XSC_BL1_ID ON ${schemaname}.XSEC_TABLE1 (id);
CREATE INDEX ${schemaname}.I_XSC_MSC_ID ON ${schemaname}.XSEC_TABLE2AMSC (id);
CREATE INDEX ${schemaname}.I_XSC_LMB_ID ON ${schemaname}.XSEC_TABLEEMB (id);

CREATE TABLE jpaschema.ACfgFldEn (id INTEGER NOT NULL, floatValColumnPrecision NUMERIC(2), floatValColumnScale NUMERIC, intValColName INTEGER, notNullable BLOB NOT NULL, stringValColumnLength VARCHAR(12), stringValEager VARCHAR(255), stringValLazy VARCHAR(255), stringValOptional VARCHAR(255), uniqueConstraintString VARCHAR(255) NOT NULL, uniqueString VARCHAR(255) NOT NULL, PRIMARY KEY (id), UNIQUE U_CFGFLDN_UNIQUESTRING (uniqueString), UNIQUE U_CFGFLDN_UNIQUECONSTRAINTSTRING (uniqueConstraintString)) ENGINE = innodb;
CREATE TABLE jpaschema.AltColumnTable (ATTRCONFIGFIELDENTITY_ID INTEGER, id INTEGER, intValCol INTEGER) ENGINE = innodb;
CREATE TABLE jpaschema.XACfgFldE (id INTEGER NOT NULL, floatValColumnPrecision NUMERIC(2), floatValColumnScale NUMERIC, intValColName INTEGER, notNullable BLOB NOT NULL, stringValColumnLength VARCHAR(12), stringValEager VARCHAR(255), stringValLazy VARCHAR(255), stringValOptional VARCHAR(255), uniqueConstraintString VARCHAR(255) NOT NULL, uniqueString VARCHAR(255) NOT NULL, PRIMARY KEY (id), UNIQUE U_XCFGFLD_UNIQUESTRING (uniqueString), UNIQUE U_XCFGFLD_UNIQUECONSTRAINTSTRING (uniqueConstraintString)) ENGINE = innodb;
CREATE TABLE jpaschema.XAltColumnTable (XMLATTRCONFIGFIELDENTITY_ID INTEGER, id INTEGER, XMLIntValCol INTEGER) ENGINE = innodb;

CREATE INDEX jpaschema.I_LTCLTBL_ATTRCONFIGFIELDENTITY_ID ON jpaschema.AltColumnTable (ATTRCONFIGFIELDENTITY_ID);
CREATE INDEX jpaschema.I_XLTCTBL_XMLATTRCONFIGFIELDENTITY_ID ON jpaschema.XAltColumnTable (XMLATTRCONFIGFIELDENTITY_ID);
