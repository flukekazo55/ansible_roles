external_url 'http://192.168.60.38'
gitlab_rails['object_store']['enabled'] = false
gitlab_rails['object_store']['connection'] = {}
gitlab_rails['object_store']['storage_options'] = {}
gitlab_rails['object_store']['proxy_download'] = false
gitlab_rails['object_store']['objects']['artifacts']['bucket'] = nil
gitlab_rails['object_store']['objects']['external_diffs']['bucket'] = nil
gitlab_rails['object_store']['objects']['lfs']['bucket'] = nil
gitlab_rails['object_store']['objects']['uploads']['bucket'] = nil
gitlab_rails['object_store']['objects']['packages']['bucket'] = nil
gitlab_rails['object_store']['objects']['dependency_proxy']['bucket'] = nil
gitlab_rails['object_store']['objects']['terraform_state']['bucket'] = nil

gitlab_rails['smtp_enable'] = true
gitlab_rails['smtp_address'] = "smtp.gmail.com"
gitlab_rails['smtp_port'] = 587
gitlab_rails['smtp_user_name'] = "@gmail.com"
gitlab_rails['smtp_password'] = ""
gitlab_rails['smtp_domain'] = "smtp.gmail.com"
gitlab_rails['smtp_authentication'] = "login"
gitlab_rails['smtp_enable_starttls_auto'] = true
gitlab_rails['smtp_tls'] = false
gitlab_rails['smtp_openssl_verify_mode'] = 'peer'