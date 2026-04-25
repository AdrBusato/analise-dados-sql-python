SELECT IdCliente, 
        DtCriacao,
       datetime ( substring (DtCriacao,1,19) ) DtCriacaoNova,
       strftime('%ws', datetime (substring (DtCriacao,1,19))) AS diaSemana

FROM clientes

