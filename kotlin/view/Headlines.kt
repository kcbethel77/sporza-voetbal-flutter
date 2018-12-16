package models.view

import models.Id

data class Headlines(val title: String,
                     val tips: List<CompetitionTip>,
                     val news: List<News>,
                     override val accessibilityText: String = title) : Accessible

data class CompetitionTip(override val id : String,
                          override val accessibilityText: String,
                          val homeTeam : CompetitionTipTeam,
                          val awayTeam: CompetitionTipTeam,
                          val status: String,
                          val date: String): Id, Accessible

data class CompetitionTipTeam(val name: String,
                              val imageUrl : String)

