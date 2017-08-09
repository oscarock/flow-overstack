Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
# https://tutoronrails.com/pages/7-relaciones-polimorficas
# https://carlossanchezperez.wordpress.com/2013/01/13/mi-guia-para-especificar-las-relaciones-en-los-modelos-active-record-rubyonrails/
# <?xml version="1.0" encoding="utf-8" ?>
# <!-- SQL XML created by WWW SQL Designer, http://code.google.com/p/wwwsqldesigner/ -->
# <!-- Active URL: http://schemadesigner.devbootcamp.com/ -->
# <sql>
# <datatypes db="mysql">
#   <group label="Numeric" color="rgb(238,238,170)">
#     <type label="Integer" length="0" sql="INTEGER" re="INT" quote=""/>
#     <type label="Decimal" length="1" sql="DECIMAL" re="DEC" quote=""/>
#     <type label="Single precision" length="0" sql="FLOAT" quote=""/>
#     <type label="Double precision" length="0" sql="DOUBLE" re="DOUBLE" quote=""/>
#   </group>
#
#   <group label="Character" color="rgb(255,200,200)">
#     <type label="Char" length="1" sql="CHAR" quote="'"/>
#     <type label="Varchar" length="1" sql="VARCHAR" quote="'"/>
#     <type label="Text" length="0" sql="MEDIUMTEXT" re="TEXT" quote="'"/>
#     <type label="Binary" length="1" sql="BINARY" quote="'"/>
#     <type label="Varbinary" length="1" sql="VARBINARY" quote="'"/>
#     <type label="BLOB" length="0" sql="BLOB" re="BLOB" quote="'"/>
#   </group>
#
#   <group label="Date &amp; Time" color="rgb(200,255,200)">
#     <type label="Date" length="0" sql="DATE" quote="'"/>
#     <type label="Time" length="0" sql="TIME" quote="'"/>
#     <type label="Datetime" length="0" sql="DATETIME" quote="'"/>
#     <type label="Year" length="0" sql="YEAR" quote=""/>
#     <type label="Timestamp" length="0" sql="TIMESTAMP" quote="'"/>
#   </group>
#
#   <group label="Miscellaneous" color="rgb(200,200,255)">
#     <type label="ENUM" length="1" sql="ENUM" quote=""/>
#     <type label="SET" length="1" sql="SET" quote=""/>
#     <type label="Bit" length="0" sql="bit" quote=""/>
#   </group>
# </datatypes><table x="468" y="95" name="questions">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="tittle" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="content" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="id_users" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default><relation table="users" row="id" />
# </row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="123" y="345" name="users">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="name" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="email" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="password" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="1060" y="478" name="votes">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="votes_type" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="votes_id" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default><relation table="comments" row="id" />
# <relation table=" answers" row="id" />
# </row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="753" y="216" name="comments">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="title" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="commentable_type" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="commentable_id" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default><relation table="questions" row="id" />
# <relation table=" answers" row="id" />
# </row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="473" y="529" name=" answers">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="title" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# </sql>
