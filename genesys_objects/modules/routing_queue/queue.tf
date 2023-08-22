/*
resource "genesyscloud_routing_queue" "example_queue3" {
  name                              = "Example Queue 3"
  division_id                       = data.genesyscloud_auth_division.demo1.id
  description                       = "This is an example description"
  acw_wrapup_prompt                 = "MANDATORY_TIMEOUT"
  acw_timeout_ms                    = 300000
  skill_evaluation_method           = "BEST"
  auto_answer_only                  = true
  enable_transcription              = true
  enable_manual_assignment          = true
  calling_party_name                = "Example Inc."
  
  media_settings_call {
    alerting_timeout_sec      = 30
    service_level_percentage  = 0.7
    service_level_duration_ms = 10000
  }
  routing_rules {
    operator     = "MEETS_THRESHOLD"
    threshold    = 9
    wait_seconds = 300
  }
  bullseye_rings {
    expansion_timeout_seconds = 15.1
    skills_to_remove          = [data.genesyscloud_routing_skill.test_skill2.id]

   
  }
 
  wrapup_codes = [data.genesyscloud_routing_wrapupcode.win.id]
}
<<<<<<< HEAD

*/
=======
*/
>>>>>>> 620b2d1758d0ca570999ac09d2a45d6ce8a9a395
