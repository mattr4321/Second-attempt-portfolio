# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
 class ProductChannel < ApplicationCable::Channel
   def subscribed
     # stream_from "some_channel"
     #stream_from "product_channel"
     
   end
 
   def unsubscribed
     # Any cleanup needed when channel is unsubscribed
   end
   
   def listen
       stop_all_streams
       stream_for data["product_id"]
       
   end
   
 end
 #changes added for 6.13