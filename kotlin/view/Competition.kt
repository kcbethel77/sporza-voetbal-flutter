package models.view

import models.Id

data class Competition(override val id : String,
                       val name: String,
                       val abbreviation: String,
                       override val accessibilityText: String = name) : Id, Accessible
