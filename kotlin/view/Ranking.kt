package models.view

import models.Id

data class Ranking(val competitionTitle: String,
                   val phases: List<RankingPhase>)

data class RankingPhase(val isCurrent: Boolean,
                        val name: String,
                        val ranking: Rank)

data class Rank(override val id: String,
                val name: String,
                val iconUrl: String,
                val position: Int,
                val matchedPlayed: Int,
                val points: Int,
                override val accessibilityText: String) : Id, Accessible
