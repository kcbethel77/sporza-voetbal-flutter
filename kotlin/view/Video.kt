package models.view

import models.Id

data class Video(override val id: String,
                 override val accessibilityText: String,
                 val title: String,
                 val date: String,
                 val contentUrl: String?,
                 val imageUrl: String?,
                 val adDomain: String?,
                 val adPartner: String?,
                 val adContent: String?,
                 val adCategory: String?,
                 val adLocation: String?,
                 val adConsent: String?) : Id, Accessible
