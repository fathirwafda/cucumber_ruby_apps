When(/^user clicks continue to details$/) do
  @confirmation = ConfirmationScreen.new
  expect(find_element(id: 'com.bukalapak.android:id/textview_debug_mode').text).to eql('BuySucceedFragment_')
  @confirmation.confirmation_payment
end
