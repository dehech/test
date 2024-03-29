package app.banque.gestion.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Collection;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Client
{
    @Id
    private Long codeClient;
    private String nomClient;
    @OneToMany(mappedBy = "client")
    private Collection<Compte> comptes;
}
