User.create!([
  {email: "test@test.com", encrypted_password: "$2a$11$3oI0ew/hy4MGoR43.x.54.5mRK1D0js/mUcwp.WdFiEHftBz3Uvb6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2017-09-06 13:39:50", last_sign_in_at: "2017-09-06 05:14:07", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Pic.create!([
  {title: "Rails Logo", description: "Shouts out to the Rails Team. Woop Woop!!", user_id: 1, image_file_name: "CDMbA57p.png", image_content_type: "image/png", image_file_size: 12302, image_updated_at: "2017-09-07 14:53:36"},
  {title: "SQL 4 Life Fool!!", description: "You know what it is. ", user_id: 1, image_file_name: "database-parts.jpg", image_content_type: "image/jpeg", image_file_size: 24740, image_updated_at: "2017-09-07 14:54:04"}
])
