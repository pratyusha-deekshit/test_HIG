#Division Data Source

data "genesyscloud_auth_division" "demo1"{
    name = "Demo1"
}


#Skil Data Source

data "genesyscloud_routing_skill" "test_skill2" {
  name = "Test Skill 2"
}



#WrapUpCode Data Source
data "genesyscloud_routing_wrapupcode" "win" {
  name = "Win"
}

