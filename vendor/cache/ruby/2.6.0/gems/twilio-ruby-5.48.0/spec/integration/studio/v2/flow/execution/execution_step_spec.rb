##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'ExecutionStep' do
  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.studio.v2.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .executions('FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .steps.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://studio.twilio.com/v2/Flows/FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Executions/FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Steps',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "previous_page_url": null,
              "next_page_url": null,
              "url": "https://studio.twilio.com/v2/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Executions/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Steps?PageSize=50&Page=0",
              "page": 0,
              "first_page_url": "https://studio.twilio.com/v2/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Executions/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Steps?PageSize=50&Page=0",
              "page_size": 50,
              "key": "steps"
          },
          "steps": []
      }
      ]
    ))

    actual = @client.studio.v2.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .executions('FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .steps.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.studio.v2.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .executions('FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .steps('FTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://studio.twilio.com/v2/Flows/FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Executions/FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Steps/FTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "FTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "flow_sid": "FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "execution_sid": "FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "parent_step_sid": null,
          "name": "incomingRequest",
          "context": {},
          "transitioned_from": "Trigger",
          "transitioned_to": "Ended",
          "date_created": "2017-11-06T12:00:00Z",
          "date_updated": null,
          "url": "https://studio.twilio.com/v2/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Executions/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Steps/FTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "links": {
              "step_context": "https://studio.twilio.com/v2/Flows/FWaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Executions/FNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Steps/FTaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Context"
          }
      }
      ]
    ))

    actual = @client.studio.v2.flows('FWXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .executions('FNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .steps('FTXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end
end