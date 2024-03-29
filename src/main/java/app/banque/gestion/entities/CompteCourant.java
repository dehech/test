package app.banque.gestion.entities;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.core.SpringVersion;

@Entity
@DiscriminatorValue("cc")
public class CompteCourant extends app.banque.gestion.entities.Compte
{
    private double decouvert;

}
