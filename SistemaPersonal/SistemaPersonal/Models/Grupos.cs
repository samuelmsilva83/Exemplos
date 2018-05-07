﻿using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Newtonsoft.Json;

namespace SistemaPersonal.Models
{
    public class Grupos
    {

        [Key]
        public int GrupoId { get; set; }

        [Required(ErrorMessage = " O Campo {0} é Obrigatório!")]
        [StringLength(50, ErrorMessage = " O Campo {0} pode ter no máximo {1} e minimo {2} caracteres ", MinimumLength = 3)]
        [Index("GrupoDescricaoIndex", IsUnique = true)]
        public string Descricao { get; set; }

        public int UserId { get; set; }

        public virtual Usuario Professor { get; set; }

        [JsonIgnore]
        public virtual ICollection<GruposDetalhes> GroupoDetalhes { get; set; }

    }
}