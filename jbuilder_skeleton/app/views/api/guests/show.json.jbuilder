json.partial! 'guest', guest: @guest

# json.gifts do
#     gifts = @guest.gifts.includes(:guest_id)
#     gifts.each do |gift|
#         json.extract! gift, :id, :title, :description
#     end
# end