-- Extraindo dados de tuplas
nomes :: (String, String, String)
nomes = ("Edison", "Cristovao", "Junior")

selec_pri (x, _, _) = x
selec_seg (_, y, _) = y
selec_ter (_, _, z) = z