-- Criação da tabela de financiamentos
CREATE TABLE IF NOT EXISTS financiamentos (
    id SERIAL PRIMARY KEY,
    cpf_cnpj VARCHAR(20),
    valor DECIMAL(12,2),
    data_contratacao DATE,
    finalidade VARCHAR(100),
    geom GEOMETRY(POINT, 4674)
);

-- Criação da tabela de talhões (áreas plantadas)
CREATE TABLE IF NOT EXISTS talhoes (
    id SERIAL PRIMARY KEY,
    cultura VARCHAR(50),
    area_ha DECIMAL(10,2),
    geom GEOMETRY(POLYGON, 4674)
);

-- Criação da tabela de áreas de preservação (APP)
CREATE TABLE IF NOT EXISTS app (
    id SERIAL PRIMARY KEY,
    tipo VARCHAR(50),
    geom GEOMETRY(MULTIPOLYGON, 4674)
);

-- Comentários (boa prática!)
COMMENT ON TABLE financiamentos IS 'Dados de financiamento rural do BC';
COMMENT ON COLUMN financiamentos.geom IS 'Localização aproximada do imóvel financiado (centroide)';
