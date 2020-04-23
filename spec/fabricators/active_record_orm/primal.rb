Fabricator :active_record_orm_primal, :class_name => 'active_record_orm/primal' do
  string_field { Forgery::LoremIpsum.sentence }
  text_field { Forgery::LoremIpsum.paragraphs 3 }
  select_field { sequence(:select_field) {|i| "option #{i}" } }
  integer_field { sequence :integer_field }
  float_field { sequence :float_field }
  decimal_field { sequence :decimal_field }
  datetime_field { sequence(:datetime_field) {|i| DateTime.now + i.days } }
  timestamp_field { sequence(:timestamp_field) {|i| DateTime.now + i.days } }
  time_field { sequence(:time_field) {|i| DateTime.now + i.hours } }
  date_field { sequence(:date_field) {|i| DateTime.now + i.days } }
  boolean_field { rand 2 }
end