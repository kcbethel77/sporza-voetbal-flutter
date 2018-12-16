package models.view

import models.Id

data class Team(override val id : String,
                val name: String,
                val iconUrl: String,
                val isFavorite : Boolean,
                val canBeFavorite: Boolean,
                override val accessibilityText: String = name) : Id, Accessible
