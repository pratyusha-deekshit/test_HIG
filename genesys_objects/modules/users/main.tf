resource "genesyscloud_user" "sheldoncooper_agent" {
  email           = "sheldon.cooper@neverreal2.demo.com"
  name            = "Sheldon Cooper"
  password        = "b@Zinga1972"
  state           = "active"
  department      = "Development"
  title           = "Agent"
  acd_auto_answer = true
  addresses {

    phone_numbers {
      number     = "+19205551212"
      media_type = "PHONE"
      type       = "MOBILE"
    }
  }
  employer_info {
    official_name = "Sheldon Cooper"
    employee_id   = "12345"
    employee_type = "Full-time"
    date_hire     = "2021-03-18"
  }
}