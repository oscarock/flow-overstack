Rails.application.routes.draw do
  root "questions#index"
  devise_for :users
  resources :questions do
    resources :comments, only: [:create]
    resources :answers, only: [:create]
  end

  get 'add_vote_question', to: 'votes#addVoteQuestion'
  get 'add_vote_answer', to: 'votes#addVoteAnswer'
  get 'remove_vote_question', to: 'votes#removeVoteQuestion'
  get 'remove_vote_answer', to: 'votes#removeVoteAnswer'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
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
# </datatypes><table x="462" y="70" name="questions">
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
# <table x="1216" y="486" name="votes">
# <row name="id" null="1" autoincrement="1">
# <datatype>INTEGER</datatype>
# <default>NULL</default></row>
# <row name="voteable_type" null="1" autoincrement="0">
# <datatype>VARCHAR</datatype>
# <default>NULL</default></row>
# <row name="voteable_id" null="1" autoincrement="0">
# <datatype>INTEGER</datatype>
# <default>NULL</default><relation table="comments" row="id" />
# <relation table=" answers" row="id" />
# </row>
# <key type="PRIMARY" name="">
# <part>id</part>
# </key>
# </table>
# <table x="807" y="217" name="comments">
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
# <table x="493" y="538" name=" answers">
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
