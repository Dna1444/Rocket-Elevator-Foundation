##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'AuthRegistrationsCredentialListMapping' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .sip \
                       .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .auth \
                       .registrations \
                       .credential_list_mappings.create(credential_list_sid: 'CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'CredentialListSid' => 'CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/SIP/Domains/SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Auth/Registrations/CredentialListMappings.json',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Thu, 30 Jul 2015 20:00:00 +0000",
          "date_updated": "Thu, 30 Jul 2015 20:00:00 +0000",
          "friendly_name": "friendly_name",
          "sid": "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .sip \
                              .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .auth \
                              .registrations \
                              .credential_list_mappings.create(credential_list_sid: 'CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .sip \
                       .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .auth \
                       .registrations \
                       .credential_list_mappings.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/SIP/Domains/SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Auth/Registrations/CredentialListMappings.json',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/Domains/SDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Auth/Registrations/CredentialListMappings.json?PageSize=50&Page=0",
          "end": 0,
          "previous_page_uri": null,
          "contents": [],
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/Domains/SDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Auth/Registrations/CredentialListMappings.json?PageSize=50&Page=0",
          "page_size": 50,
          "start": 0,
          "next_page_uri": null,
          "page": 0
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .sip \
                              .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .auth \
                              .registrations \
                              .credential_list_mappings.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/Domains/SDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Auth/Registrations/CredentialListMappings.json?PageSize=50&Page=0",
          "end": 0,
          "previous_page_uri": null,
          "contents": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Thu, 30 Jul 2015 20:00:00 +0000",
                  "date_updated": "Thu, 30 Jul 2015 20:00:00 +0000",
                  "friendly_name": "friendly_name",
                  "sid": "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/SIP/Domains/SDaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Auth/Registrations/CredentialListMappings.json?PageSize=50&Page=0",
          "page_size": 50,
          "start": 0,
          "next_page_uri": null,
          "page": 0
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .sip \
                              .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .auth \
                              .registrations \
                              .credential_list_mappings.list()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .sip \
                       .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .auth \
                       .registrations \
                       .credential_list_mappings('CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/SIP/Domains/SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Auth/Registrations/CredentialListMappings/CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Thu, 30 Jul 2015 20:00:00 +0000",
          "date_updated": "Thu, 30 Jul 2015 20:00:00 +0000",
          "friendly_name": "friendly_name",
          "sid": "CLaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .sip \
                              .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .auth \
                              .registrations \
                              .credential_list_mappings('CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .sip \
                       .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                       .auth \
                       .registrations \
                       .credential_list_mappings('CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/SIP/Domains/SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/Auth/Registrations/CredentialListMappings/CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.api.v2010.accounts('ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .sip \
                              .domains('SDXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                              .auth \
                              .registrations \
                              .credential_list_mappings('CLXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').delete()

    expect(actual).to eq(true)
  end
end