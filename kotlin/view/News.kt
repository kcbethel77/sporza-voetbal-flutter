package models.view

import models.Id

data class News(override val id: String,
                override val accessibilityText: String,
                val contentUrl : String?,
                val title: String,
                val description: String,
                val imageUrl: String?,
                val date: String) : Id, Accessible
