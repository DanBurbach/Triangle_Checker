require File.join(File.dirname(__FILE__), 'helper')

class FCCGeocoderTest < BaseGeocoderTest #:nodoc: all
  def setup
    super
    @la = Geokit::LatLng.new(34.05, -118.25)
    @base_url = 'https://geo.fcc.gov/api/census/block/find'
  end

  def assert_url(expected_url)
    assert_equal expected_url, TestHelper.last_url.gsub(/&oauth_[a-z_]+=[a-zA-Z0-9\-. %]+/, '').gsub('%20', '+')
  end

  def test_fcc_reverse_geocode
    url = "#{@base_url}?format=json&latitude=34.05&longitude=-118.25"
    res = reverse_geocode(@la, :fcc_reverse_geocode)
    assert_url url
    assert_equal res.country_code, 'US'
    assert_equal res.state, 'CA'
    assert_equal res.district, 'Los Angeles'
  end
end
