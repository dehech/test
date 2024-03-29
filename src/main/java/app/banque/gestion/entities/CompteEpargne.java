package app.banque.gestion.entities;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@AllArgsConstructor
@DiscriminatorValue("ce")
public class CompteEpargne extends app.banque.gestion.entities.Compte
{
    private double tauxinteret;
}
