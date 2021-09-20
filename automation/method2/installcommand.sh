#!/bin/bash
        /usr/sbin/useradd ansibletest
        echo "ansibletest        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers.d/ansibletest
        /usr/bin/mkdir /home/ansibletest/.ssh
        /usr/bin/chown ansibletest:ansibletest /home/ansibletest/.ssh
        /usr/bin/chmod 700 /home/ansibletest/.ssh
        echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDipsDmXiXhLzmhE9FAuUFbrSj8enHxCHLL4uAP8C36lid/kun+Dixwvv2JE7tQmNQIZbThkFXuKGSmZr6pch8/6c15ESoJ90Sau1PBuPUq4zjaiaN068Cut9e7noxcnFqjrQxyamWoNxCVRTG4mu8c8xdNA4QIUhOj8tbKnTjQnaubBQCZ+/Sg9gDPRs+7Qylqg2gFkEs64xzj2/CLNouwRLiUNRThVieVoMfixNb3/hGMOO+xaQROMVj12K3T7YiRznV38ntL+QmoUVo7PKlJXx/cBRqBfyfklV/KxMvt1eBY5wWK49QcKZse8LzIC0LvIMWitId6mNRheRNsow5l Jenkins" >> /home/ansibletest/.ssh/authorized_keys
        /usr/bin/chmod 600 /home/ansibletest/.ssh/authorized_keys
        /usr/bin/chown ansibletest:ansibletest /home/ansibletest/.ssh/authorized_keys
