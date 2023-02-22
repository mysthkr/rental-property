class Proper < ApplicationRecord
  has_many :staions, dependent: :destroy
  accepts_nested_attributes_for :stations, allow_destroy: true
end

class Station < ApplicationRecord
  belongs_to :proper
end

rails g migration AddAuthorRefToBooks author:references
rails g migration AddProperRefToStations proper:references
def change
    add_reference :books, :author, foreign_key: true
  end


Proper
proper_name,rent,address,age,remark,stations_attributes
proper_name:string rent:integer address:string age:integer remark:text

Station
line_name, station_name, minute_walk
line_name:string station_name:string minute_walk:integer


accepts_nested_attributes_forヘルパーが受け取るのはこのようなパラメータの名前です。
たとえば、2つの住所を持つユーザーを1人作成する場合、送信されるパラメータは以下のようになります。


{
　'proper' => {
　　'name' => 'John Doe',
　　'stations_attributes' => {
　　　'0' => {
　　　　'line_name' => 'Home',
　　　　'station_name' => '221b Baker Street'
　　　　'walk' => '5'
　　　},
　　　'1' => {
　　　　'kind' => 'Office',
　　　　'street' => '31 Spooner Street'
　　　}
　　}
　}
}


{
　'person' => {
　　'name' => 'John Doe',
　　'addresses_attributes' => {
　　　'0' => {
　　　　'kind' => 'Home',
　　　　'street' => '221b Baker Street'
　　　},
　　　'1' => {
　　　　'kind' => 'Office',
　　　　'street' => '31 Spooner Street'
　　　}
　　}
　}
}

