-- Enable pgcrypto for gen_random_uuid();

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Table: beam_journal

CREATE TABLE IF NOT EXISTS beam_journal (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                     legacy_id text, date timestamp NULL,
                                                                                                    from_value text, to_value text, amount text, created_at timestamp DEFAULT now(),
                                                                                                                                                                              updated_at timestamp DEFAULT now());

-- Table: bill_book

CREATE TABLE IF NOT EXISTS bill_book (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                  legacy_id text, name text, bill_number text, date timestamp NULL,
                                                                                                                              bill_amount text, terms text, contract_no text, quality text, amount_jodi_mtr text, taga text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                          updated_at timestamp DEFAULT now());

-- Table: brokers

CREATE TABLE IF NOT EXISTS brokers (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                legacy_id text, brokers text, created_at timestamp DEFAULT now(),
                                                                                                                           updated_at timestamp DEFAULT now());

-- Table: contract_book

CREATE TABLE IF NOT EXISTS contract_book (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                      legacy_id text, contract_no text, party_name text, date timestamp NULL,
                                                                                                                                        quality text, amount text, rate text, terms text, delivery_period text, delivery_total text, additional_notes text, balance_delivery text, new_column text, new_column_a text, broker text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                                                                                                                 updated_at timestamp DEFAULT now());

-- Table: costing

CREATE TABLE IF NOT EXISTS costing (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                legacy_id text, quality text, date timestamp NULL,
                                                                                                             LENGTH text, length_war text, reed text, pick text, reed_space_warp text, reed_space_weft text, warp_count text, weft_count text, job_rate text, warp_rate text, weft_rate text, sizing_rate text, mercerise_rate text, other_charges text, weft_gram text, weft_cost text, job_cost text, mercerize_cost text, other_costs text, total_cost text, lasa text, warp_gram text, warp_cost text, sizing_cost text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          updated_at timestamp DEFAULT now());

-- Table: greige_stock

CREATE TABLE IF NOT EXISTS greige_stock (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                     legacy_id text, name text, quantity_taga text, quantity_mtr_jod text, outward_qty_mtr text, outward_qty_taga text, final_taga_stock text, final_stock_mtr_jod text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                      updated_at timestamp DEFAULT now());

-- Table: parity_for_pc_d

CREATE TABLE IF NOT EXISTS parity_for_pc_d (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                        legacy_id text, LENGTH text, fani text, pick text, panna text, SECOND text, parity text, fani_diff text, pick_diff text, fani_rate text, pick_rate_12_first text, final_pick_for_c_first_12 text, remaing_picks text, remaing_pick text, final_pick_for_c text, pick_cost text, panna_diff text, panna_rate text, length_diff text, final_rate text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                                                                                                                                                                                                          updated_at timestamp DEFAULT now());

-- Table: parity

CREATE TABLE IF NOT EXISTS parity (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                               legacy_id text, fani text, pick text, panna text, SECOND text, LENGTH text, parity text, fani_diff text, pick_diff text, fani_rate text, pick_less_than_12 text, remaining_pick text, remaining_pick text, pick_cost text, panna_diff text, panna_cost text, final_cost text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                                                                                                                          updated_at timestamp DEFAULT now());

-- Table: purchase_party

CREATE TABLE IF NOT EXISTS purchase_party (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                       legacy_id text, name text, created_at timestamp DEFAULT now(),
                                                                                                                               updated_at timestamp DEFAULT now());

-- Table: sizing

CREATE TABLE IF NOT EXISTS sizing (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                               legacy_id text, name text, created_at timestamp DEFAULT now(),
                                                                                                                       updated_at timestamp DEFAULT now());

-- Table: terms

CREATE TABLE IF NOT EXISTS terms (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                              legacy_id text, terms text, created_at timestamp DEFAULT now(),
                                                                                                                       updated_at timestamp DEFAULT now());

-- Table: weaver_inward

CREATE TABLE IF NOT EXISTS weaver_inward (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                      legacy_id text, date timestamp NULL,
                                                                                                     quality text, taga text, jodi_mtr text, weaver text, set_no text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                    updated_at timestamp DEFAULT now());

-- Table: weaver_set

CREATE TABLE IF NOT EXISTS weaver_set (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                   legacy_id text, set_no text, quality text, sizing text, cuts_weaver_1 text, weaver text, total_inward_cuts text, total_inward_cuts_copy text, total_cut_by_4 text, remaining_cuts text, new_column_b text, new_column_b_copy text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                                                                                   updated_at timestamp DEFAULT now());

-- Table: weaver_sizing_1

CREATE TABLE IF NOT EXISTS weaver_sizing_1 (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                        legacy_id text, weaver_name text, total_from text, total_to text, final_stock text, total_looms text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                           updated_at timestamp DEFAULT now());

-- Table: yarn_inward

CREATE TABLE IF NOT EXISTS yarn_inward (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                    legacy_id text, name text, date timestamp NULL,
                                                                                                              TYPE text, bags_boxes text, weight_net text, inward_from text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                          updated_at timestamp DEFAULT now());

-- Table: yarn_name

CREATE TABLE IF NOT EXISTS yarn_name (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                  legacy_id text, name text, created_at timestamp DEFAULT now(),
                                                                                                                          updated_at timestamp DEFAULT now());

-- Table: yarn_outward

CREATE TABLE IF NOT EXISTS yarn_outward (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                     legacy_id text, given_to text, name text, date timestamp NULL,
                                                                                                                              TYPE text, bags_boxes text, weight_net text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                        updated_at timestamp DEFAULT now());

-- Table: yarn_party

CREATE TABLE IF NOT EXISTS yarn_party (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                   legacy_id text, created_at timestamp DEFAULT now(),
                                                                                                                updated_at timestamp DEFAULT now());

-- Table: yarn_stock

CREATE TABLE IF NOT EXISTS yarn_stock (id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
                                                                   legacy_id text, name text, inward_total_bags text, inward_total_kgs text, outward_total_bags text, outward_total_kgs text, final_total_bags text, final_total_kgs text, created_at timestamp DEFAULT now(),
                                                                                                                                                                                                                                                                        updated_at timestamp DEFAULT now());


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE beam_journal ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE beam_journal ADD CONSTRAINT fk_beam_journal_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE bill_book ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE bill_book ADD CONSTRAINT fk_bill_book_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE brokers ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE brokers ADD CONSTRAINT fk_brokers_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE contract_book ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE contract_book ADD CONSTRAINT fk_contract_book_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE costing ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE costing ADD CONSTRAINT fk_costing_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE greige_stock ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE greige_stock ADD CONSTRAINT fk_greige_stock_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE parity_for_pc_d ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE parity_for_pc_d ADD CONSTRAINT fk_parity_for_pc_d_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE parity ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE parity ADD CONSTRAINT fk_parity_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE purchase_party ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE purchase_party ADD CONSTRAINT fk_purchase_party_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE sizing ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE sizing ADD CONSTRAINT fk_sizing_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE terms ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE terms ADD CONSTRAINT fk_terms_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE weaver_inward ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE weaver_inward ADD CONSTRAINT fk_weaver_inward_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE weaver_set ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE weaver_set ADD CONSTRAINT fk_weaver_set_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE weaver_sizing_1 ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE weaver_sizing_1 ADD CONSTRAINT fk_weaver_sizing_1_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE yarn_inward ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE yarn_inward ADD CONSTRAINT fk_yarn_inward_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE yarn_name ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE yarn_name ADD CONSTRAINT fk_yarn_name_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE yarn_outward ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE yarn_outward ADD CONSTRAINT fk_yarn_outward_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE yarn_party ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE yarn_party ADD CONSTRAINT fk_yarn_party_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS yarn_inward_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_yarn_inward
FOREIGN KEY (yarn_inward_id) REFERENCES yarn_inward(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS sizing_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_sizing
FOREIGN KEY (sizing_id) REFERENCES sizing(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS weaver_set_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_weaver_set
FOREIGN KEY (weaver_set_id) REFERENCES weaver_set(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS weaver_sizing_1_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_weaver_sizing_1
FOREIGN KEY (weaver_sizing_1_id) REFERENCES weaver_sizing_1(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS yarn_name_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_yarn_name
FOREIGN KEY (yarn_name_id) REFERENCES yarn_name(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS parity_for_pc_d_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_parity_for_pc_d
FOREIGN KEY (parity_for_pc_d_id) REFERENCES parity_for_pc_d(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS yarn_outward_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_yarn_outward
FOREIGN KEY (yarn_outward_id) REFERENCES yarn_outward(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS brokers_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_brokers
FOREIGN KEY (brokers_id) REFERENCES brokers(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS greige_stock_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_greige_stock
FOREIGN KEY (greige_stock_id) REFERENCES greige_stock(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS parity_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_parity
FOREIGN KEY (parity_id) REFERENCES parity(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS terms_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_terms
FOREIGN KEY (terms_id) REFERENCES terms(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS purchase_party_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_purchase_party
FOREIGN KEY (purchase_party_id) REFERENCES purchase_party(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS yarn_party_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_yarn_party
FOREIGN KEY (yarn_party_id) REFERENCES yarn_party(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS yarn_stock_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_yarn_stock
FOREIGN KEY (yarn_stock_id) REFERENCES yarn_stock(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS costing_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_costing
FOREIGN KEY (costing_id) REFERENCES costing(id);


ALTER TABLE yarn_stock ADD COLUMN IF NOT EXISTS weaver_inward_id UUID;


ALTER TABLE yarn_stock ADD CONSTRAINT fk_yarn_stock_weaver_inward
FOREIGN KEY (weaver_inward_id) REFERENCES weaver_inward(id);