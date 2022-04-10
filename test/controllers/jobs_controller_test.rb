require "test_helper"

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "jobs#index returns list of jobs" do
    get "/jobs"
    assert response.parsed_body.map { |job| job["id"] } == Job.all.pluck(:id)
  end

  test "jobs#show returns a specific job by id" do
    job = Job.first
    get "/jobs/#{job.id}"
    assert response.parsed_body["id"] == job.id
  end

  test "jobs#show throws an error if no job found" do
    assert_raise ActiveRecord::RecordNotFound do
      get "/jobs/-1"
    end
  end
end
