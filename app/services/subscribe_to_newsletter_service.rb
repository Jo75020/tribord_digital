class SubscribeToNewsletterService
  def initialize(user)
    @info = Info.last
    @gibbon = Gibbon::Request.new(api_key: ENV['MAILCHIMP_API_KEY'])
    @list_id = ENV['MAILCHIMP_LIST_ID']
  end

  def call
    unless @info.email == ""
    @gibbon.lists(@list_id).members.create(
      body: {
        email_address: @info.email,
        status: "subscribed",
        # merge_fields: {
        #   FNAME: @user.first_name,
        #   LNAME: @user.last_name
        # }
      }
    )
  end
  end
end
