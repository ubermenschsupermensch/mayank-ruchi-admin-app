-- Enable pgcrypto for gen_random_uuid()
create extension if not exists pgcrypto;

-- Table: beam_journal
create table if not exists beam_journal (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  date timestamp null,
  from text,
  to text,
  amount text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: bill_book
create table if not exists bill_book (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  bill_number text,
  date timestamp null,
  bill_amount text,
  terms text,
  contract_no text,
  quality text,
  amount_jodi_mtr text,
  taga text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: brokers
create table if not exists brokers (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  brokers text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: contract_book
create table if not exists contract_book (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  contract_no text,
  party_name text,
  date timestamp null,
  quality text,
  amount text,
  rate text,
  terms text,
  delivery_period text,
  delivery_total text,
  additional_notes text,
  balance_delivery text,
  new_column text,
  new_column_a text,
  broker text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: costing
create table if not exists costing (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  quality text,
  date timestamp null,
  length text,
  length_war text,
  reed text,
  pick text,
  reed_space_warp text,
  reed_space_weft text,
  warp_count text,
  weft_count text,
  job_rate text,
  warp_rate text,
  weft_rate text,
  sizing_rate text,
  mercerise_rate text,
  other_charges text,
  weft_gram text,
  weft_cost text,
  job_cost text,
  mercerize_cost text,
  other_costs text,
  total_cost text,
  lasa text,
  warp_gram text,
  warp_cost text,
  sizing_cost text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: greige_stock
create table if not exists greige_stock (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  quantity_taga text,
  quantity_mtr_jod text,
  outward_qty_mtr text,
  outward_qty_taga text,
  final_taga_stock text,
  final_stock_mtr_jod text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: parity_for_pc_d
create table if not exists parity_for_pc_d (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  length text,
  fani text,
  pick text,
  panna text,
  second text,
  parity text,
  fani_diff text,
  pick_diff text,
  fani_rate text,
  pick_rate_12_first text,
  final_pick_for_c_first_12 text,
  remaing_picks text,
  remaing_pick text,
  final_pick_for_c text,
  pick_cost text,
  panna_diff text,
  panna_rate text,
  length_diff text,
  final_rate text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: parity
create table if not exists parity (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  fani text,
  pick text,
  panna text,
  second text,
  length text,
  parity text,
  fani_diff text,
  pick_diff text,
  fani_rate text,
  pick_less_than_12 text,
  remaining_pick text,
  remaining_pick text,
  pick_cost text,
  panna_diff text,
  panna_cost text,
  final_cost text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: purchase_party
create table if not exists purchase_party (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: sizing
create table if not exists sizing (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: terms
create table if not exists terms (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  terms text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: weaver_inward
create table if not exists weaver_inward (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  date timestamp null,
  quality text,
  taga text,
  jodi_mtr text,
  weaver text,
  set_no text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: weaver_set
create table if not exists weaver_set (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  set_no text,
  quality text,
  sizing text,
  cuts_weaver_1 text,
  weaver text,
  total_inward_cuts text,
  total_inward_cuts_copy text,
  total_cut_by_4 text,
  remaining_cuts text,
  new_column_b text,
  new_column_b_copy text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: weaver_sizing_1
create table if not exists weaver_sizing_1 (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  weaver_name text,
  total_from text,
  total_to text,
  final_stock text,
  total_looms text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: yarn_inward
create table if not exists yarn_inward (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  date timestamp null,
  type text,
  bags_boxes text,
  weight_net text,
  inward_from text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: yarn_name
create table if not exists yarn_name (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: yarn_outward
create table if not exists yarn_outward (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  given_to text,
  name text,
  date timestamp null,
  type text,
  bags_boxes text,
  weight_net text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: yarn_party
create table if not exists yarn_party (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- Table: yarn_stock
create table if not exists yarn_stock (
  id uuid primary key default gen_random_uuid(),
  legacy_id text,
  name text,
  inward_total_bags text,
  inward_total_kgs text,
  outward_total_bags text,
  outward_total_kgs text,
  final_total_bags text,
  final_total_kgs text,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

alter table beam_journal add column if not exists yarn_inward_id uuid;
alter table beam_journal add constraint fk_beam_journal_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table beam_journal add column if not exists sizing_id uuid;
alter table beam_journal add constraint fk_beam_journal_sizing foreign key (sizing_id) references sizing(id);
alter table beam_journal add column if not exists weaver_set_id uuid;
alter table beam_journal add constraint fk_beam_journal_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table beam_journal add column if not exists weaver_sizing_1_id uuid;
alter table beam_journal add constraint fk_beam_journal_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table beam_journal add column if not exists yarn_name_id uuid;
alter table beam_journal add constraint fk_beam_journal_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table beam_journal add column if not exists parity_for_pc_d_id uuid;
alter table beam_journal add constraint fk_beam_journal_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table beam_journal add column if not exists yarn_outward_id uuid;
alter table beam_journal add constraint fk_beam_journal_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table beam_journal add column if not exists brokers_id uuid;
alter table beam_journal add constraint fk_beam_journal_brokers foreign key (brokers_id) references brokers(id);
alter table beam_journal add column if not exists greige_stock_id uuid;
alter table beam_journal add constraint fk_beam_journal_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table beam_journal add column if not exists parity_id uuid;
alter table beam_journal add constraint fk_beam_journal_parity foreign key (parity_id) references parity(id);
alter table beam_journal add column if not exists terms_id uuid;
alter table beam_journal add constraint fk_beam_journal_terms foreign key (terms_id) references terms(id);
alter table beam_journal add column if not exists purchase_party_id uuid;
alter table beam_journal add constraint fk_beam_journal_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table beam_journal add column if not exists yarn_party_id uuid;
alter table beam_journal add constraint fk_beam_journal_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table beam_journal add column if not exists yarn_stock_id uuid;
alter table beam_journal add constraint fk_beam_journal_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table beam_journal add column if not exists costing_id uuid;
alter table beam_journal add constraint fk_beam_journal_costing foreign key (costing_id) references costing(id);
alter table beam_journal add column if not exists weaver_inward_id uuid;
alter table beam_journal add constraint fk_beam_journal_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table bill_book add column if not exists yarn_inward_id uuid;
alter table bill_book add constraint fk_bill_book_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table bill_book add column if not exists sizing_id uuid;
alter table bill_book add constraint fk_bill_book_sizing foreign key (sizing_id) references sizing(id);
alter table bill_book add column if not exists weaver_set_id uuid;
alter table bill_book add constraint fk_bill_book_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table bill_book add column if not exists weaver_sizing_1_id uuid;
alter table bill_book add constraint fk_bill_book_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table bill_book add column if not exists yarn_name_id uuid;
alter table bill_book add constraint fk_bill_book_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table bill_book add column if not exists parity_for_pc_d_id uuid;
alter table bill_book add constraint fk_bill_book_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table bill_book add column if not exists yarn_outward_id uuid;
alter table bill_book add constraint fk_bill_book_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table bill_book add column if not exists brokers_id uuid;
alter table bill_book add constraint fk_bill_book_brokers foreign key (brokers_id) references brokers(id);
alter table bill_book add column if not exists greige_stock_id uuid;
alter table bill_book add constraint fk_bill_book_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table bill_book add column if not exists parity_id uuid;
alter table bill_book add constraint fk_bill_book_parity foreign key (parity_id) references parity(id);
alter table bill_book add column if not exists terms_id uuid;
alter table bill_book add constraint fk_bill_book_terms foreign key (terms_id) references terms(id);
alter table bill_book add column if not exists purchase_party_id uuid;
alter table bill_book add constraint fk_bill_book_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table bill_book add column if not exists yarn_party_id uuid;
alter table bill_book add constraint fk_bill_book_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table bill_book add column if not exists yarn_stock_id uuid;
alter table bill_book add constraint fk_bill_book_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table bill_book add column if not exists costing_id uuid;
alter table bill_book add constraint fk_bill_book_costing foreign key (costing_id) references costing(id);
alter table bill_book add column if not exists weaver_inward_id uuid;
alter table bill_book add constraint fk_bill_book_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table brokers add column if not exists yarn_inward_id uuid;
alter table brokers add constraint fk_brokers_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table brokers add column if not exists sizing_id uuid;
alter table brokers add constraint fk_brokers_sizing foreign key (sizing_id) references sizing(id);
alter table brokers add column if not exists weaver_set_id uuid;
alter table brokers add constraint fk_brokers_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table brokers add column if not exists weaver_sizing_1_id uuid;
alter table brokers add constraint fk_brokers_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table brokers add column if not exists yarn_name_id uuid;
alter table brokers add constraint fk_brokers_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table brokers add column if not exists parity_for_pc_d_id uuid;
alter table brokers add constraint fk_brokers_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table brokers add column if not exists yarn_outward_id uuid;
alter table brokers add constraint fk_brokers_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table brokers add column if not exists brokers_id uuid;
alter table brokers add constraint fk_brokers_brokers foreign key (brokers_id) references brokers(id);
alter table brokers add column if not exists greige_stock_id uuid;
alter table brokers add constraint fk_brokers_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table brokers add column if not exists parity_id uuid;
alter table brokers add constraint fk_brokers_parity foreign key (parity_id) references parity(id);
alter table brokers add column if not exists terms_id uuid;
alter table brokers add constraint fk_brokers_terms foreign key (terms_id) references terms(id);
alter table brokers add column if not exists purchase_party_id uuid;
alter table brokers add constraint fk_brokers_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table brokers add column if not exists yarn_party_id uuid;
alter table brokers add constraint fk_brokers_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table brokers add column if not exists yarn_stock_id uuid;
alter table brokers add constraint fk_brokers_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table brokers add column if not exists costing_id uuid;
alter table brokers add constraint fk_brokers_costing foreign key (costing_id) references costing(id);
alter table brokers add column if not exists weaver_inward_id uuid;
alter table brokers add constraint fk_brokers_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table contract_book add column if not exists yarn_inward_id uuid;
alter table contract_book add constraint fk_contract_book_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table contract_book add column if not exists sizing_id uuid;
alter table contract_book add constraint fk_contract_book_sizing foreign key (sizing_id) references sizing(id);
alter table contract_book add column if not exists weaver_set_id uuid;
alter table contract_book add constraint fk_contract_book_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table contract_book add column if not exists weaver_sizing_1_id uuid;
alter table contract_book add constraint fk_contract_book_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table contract_book add column if not exists yarn_name_id uuid;
alter table contract_book add constraint fk_contract_book_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table contract_book add column if not exists parity_for_pc_d_id uuid;
alter table contract_book add constraint fk_contract_book_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table contract_book add column if not exists yarn_outward_id uuid;
alter table contract_book add constraint fk_contract_book_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table contract_book add column if not exists brokers_id uuid;
alter table contract_book add constraint fk_contract_book_brokers foreign key (brokers_id) references brokers(id);
alter table contract_book add column if not exists greige_stock_id uuid;
alter table contract_book add constraint fk_contract_book_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table contract_book add column if not exists parity_id uuid;
alter table contract_book add constraint fk_contract_book_parity foreign key (parity_id) references parity(id);
alter table contract_book add column if not exists terms_id uuid;
alter table contract_book add constraint fk_contract_book_terms foreign key (terms_id) references terms(id);
alter table contract_book add column if not exists purchase_party_id uuid;
alter table contract_book add constraint fk_contract_book_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table contract_book add column if not exists yarn_party_id uuid;
alter table contract_book add constraint fk_contract_book_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table contract_book add column if not exists yarn_stock_id uuid;
alter table contract_book add constraint fk_contract_book_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table contract_book add column if not exists costing_id uuid;
alter table contract_book add constraint fk_contract_book_costing foreign key (costing_id) references costing(id);
alter table contract_book add column if not exists weaver_inward_id uuid;
alter table contract_book add constraint fk_contract_book_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table costing add column if not exists yarn_inward_id uuid;
alter table costing add constraint fk_costing_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table costing add column if not exists sizing_id uuid;
alter table costing add constraint fk_costing_sizing foreign key (sizing_id) references sizing(id);
alter table costing add column if not exists weaver_set_id uuid;
alter table costing add constraint fk_costing_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table costing add column if not exists weaver_sizing_1_id uuid;
alter table costing add constraint fk_costing_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table costing add column if not exists yarn_name_id uuid;
alter table costing add constraint fk_costing_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table costing add column if not exists parity_for_pc_d_id uuid;
alter table costing add constraint fk_costing_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table costing add column if not exists yarn_outward_id uuid;
alter table costing add constraint fk_costing_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table costing add column if not exists brokers_id uuid;
alter table costing add constraint fk_costing_brokers foreign key (brokers_id) references brokers(id);
alter table costing add column if not exists greige_stock_id uuid;
alter table costing add constraint fk_costing_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table costing add column if not exists parity_id uuid;
alter table costing add constraint fk_costing_parity foreign key (parity_id) references parity(id);
alter table costing add column if not exists terms_id uuid;
alter table costing add constraint fk_costing_terms foreign key (terms_id) references terms(id);
alter table costing add column if not exists purchase_party_id uuid;
alter table costing add constraint fk_costing_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table costing add column if not exists yarn_party_id uuid;
alter table costing add constraint fk_costing_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table costing add column if not exists yarn_stock_id uuid;
alter table costing add constraint fk_costing_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table costing add column if not exists costing_id uuid;
alter table costing add constraint fk_costing_costing foreign key (costing_id) references costing(id);
alter table costing add column if not exists weaver_inward_id uuid;
alter table costing add constraint fk_costing_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table greige_stock add column if not exists yarn_inward_id uuid;
alter table greige_stock add constraint fk_greige_stock_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table greige_stock add column if not exists sizing_id uuid;
alter table greige_stock add constraint fk_greige_stock_sizing foreign key (sizing_id) references sizing(id);
alter table greige_stock add column if not exists weaver_set_id uuid;
alter table greige_stock add constraint fk_greige_stock_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table greige_stock add column if not exists weaver_sizing_1_id uuid;
alter table greige_stock add constraint fk_greige_stock_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table greige_stock add column if not exists yarn_name_id uuid;
alter table greige_stock add constraint fk_greige_stock_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table greige_stock add column if not exists parity_for_pc_d_id uuid;
alter table greige_stock add constraint fk_greige_stock_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table greige_stock add column if not exists yarn_outward_id uuid;
alter table greige_stock add constraint fk_greige_stock_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table greige_stock add column if not exists brokers_id uuid;
alter table greige_stock add constraint fk_greige_stock_brokers foreign key (brokers_id) references brokers(id);
alter table greige_stock add column if not exists greige_stock_id uuid;
alter table greige_stock add constraint fk_greige_stock_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table greige_stock add column if not exists parity_id uuid;
alter table greige_stock add constraint fk_greige_stock_parity foreign key (parity_id) references parity(id);
alter table greige_stock add column if not exists terms_id uuid;
alter table greige_stock add constraint fk_greige_stock_terms foreign key (terms_id) references terms(id);
alter table greige_stock add column if not exists purchase_party_id uuid;
alter table greige_stock add constraint fk_greige_stock_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table greige_stock add column if not exists yarn_party_id uuid;
alter table greige_stock add constraint fk_greige_stock_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table greige_stock add column if not exists yarn_stock_id uuid;
alter table greige_stock add constraint fk_greige_stock_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table greige_stock add column if not exists costing_id uuid;
alter table greige_stock add constraint fk_greige_stock_costing foreign key (costing_id) references costing(id);
alter table greige_stock add column if not exists weaver_inward_id uuid;
alter table greige_stock add constraint fk_greige_stock_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table parity_for_pc_d add column if not exists yarn_inward_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table parity_for_pc_d add column if not exists sizing_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_sizing foreign key (sizing_id) references sizing(id);
alter table parity_for_pc_d add column if not exists weaver_set_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table parity_for_pc_d add column if not exists weaver_sizing_1_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table parity_for_pc_d add column if not exists yarn_name_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table parity_for_pc_d add column if not exists parity_for_pc_d_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table parity_for_pc_d add column if not exists yarn_outward_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table parity_for_pc_d add column if not exists brokers_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_brokers foreign key (brokers_id) references brokers(id);
alter table parity_for_pc_d add column if not exists greige_stock_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table parity_for_pc_d add column if not exists parity_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_parity foreign key (parity_id) references parity(id);
alter table parity_for_pc_d add column if not exists terms_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_terms foreign key (terms_id) references terms(id);
alter table parity_for_pc_d add column if not exists purchase_party_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table parity_for_pc_d add column if not exists yarn_party_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table parity_for_pc_d add column if not exists yarn_stock_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table parity_for_pc_d add column if not exists costing_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_costing foreign key (costing_id) references costing(id);
alter table parity_for_pc_d add column if not exists weaver_inward_id uuid;
alter table parity_for_pc_d add constraint fk_parity_for_pc_d_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table parity add column if not exists yarn_inward_id uuid;
alter table parity add constraint fk_parity_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table parity add column if not exists sizing_id uuid;
alter table parity add constraint fk_parity_sizing foreign key (sizing_id) references sizing(id);
alter table parity add column if not exists weaver_set_id uuid;
alter table parity add constraint fk_parity_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table parity add column if not exists weaver_sizing_1_id uuid;
alter table parity add constraint fk_parity_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table parity add column if not exists yarn_name_id uuid;
alter table parity add constraint fk_parity_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table parity add column if not exists parity_for_pc_d_id uuid;
alter table parity add constraint fk_parity_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table parity add column if not exists yarn_outward_id uuid;
alter table parity add constraint fk_parity_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table parity add column if not exists brokers_id uuid;
alter table parity add constraint fk_parity_brokers foreign key (brokers_id) references brokers(id);
alter table parity add column if not exists greige_stock_id uuid;
alter table parity add constraint fk_parity_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table parity add column if not exists parity_id uuid;
alter table parity add constraint fk_parity_parity foreign key (parity_id) references parity(id);
alter table parity add column if not exists terms_id uuid;
alter table parity add constraint fk_parity_terms foreign key (terms_id) references terms(id);
alter table parity add column if not exists purchase_party_id uuid;
alter table parity add constraint fk_parity_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table parity add column if not exists yarn_party_id uuid;
alter table parity add constraint fk_parity_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table parity add column if not exists yarn_stock_id uuid;
alter table parity add constraint fk_parity_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table parity add column if not exists costing_id uuid;
alter table parity add constraint fk_parity_costing foreign key (costing_id) references costing(id);
alter table parity add column if not exists weaver_inward_id uuid;
alter table parity add constraint fk_parity_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table purchase_party add column if not exists yarn_inward_id uuid;
alter table purchase_party add constraint fk_purchase_party_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table purchase_party add column if not exists sizing_id uuid;
alter table purchase_party add constraint fk_purchase_party_sizing foreign key (sizing_id) references sizing(id);
alter table purchase_party add column if not exists weaver_set_id uuid;
alter table purchase_party add constraint fk_purchase_party_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table purchase_party add column if not exists weaver_sizing_1_id uuid;
alter table purchase_party add constraint fk_purchase_party_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table purchase_party add column if not exists yarn_name_id uuid;
alter table purchase_party add constraint fk_purchase_party_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table purchase_party add column if not exists parity_for_pc_d_id uuid;
alter table purchase_party add constraint fk_purchase_party_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table purchase_party add column if not exists yarn_outward_id uuid;
alter table purchase_party add constraint fk_purchase_party_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table purchase_party add column if not exists brokers_id uuid;
alter table purchase_party add constraint fk_purchase_party_brokers foreign key (brokers_id) references brokers(id);
alter table purchase_party add column if not exists greige_stock_id uuid;
alter table purchase_party add constraint fk_purchase_party_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table purchase_party add column if not exists parity_id uuid;
alter table purchase_party add constraint fk_purchase_party_parity foreign key (parity_id) references parity(id);
alter table purchase_party add column if not exists terms_id uuid;
alter table purchase_party add constraint fk_purchase_party_terms foreign key (terms_id) references terms(id);
alter table purchase_party add column if not exists purchase_party_id uuid;
alter table purchase_party add constraint fk_purchase_party_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table purchase_party add column if not exists yarn_party_id uuid;
alter table purchase_party add constraint fk_purchase_party_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table purchase_party add column if not exists yarn_stock_id uuid;
alter table purchase_party add constraint fk_purchase_party_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table purchase_party add column if not exists costing_id uuid;
alter table purchase_party add constraint fk_purchase_party_costing foreign key (costing_id) references costing(id);
alter table purchase_party add column if not exists weaver_inward_id uuid;
alter table purchase_party add constraint fk_purchase_party_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table sizing add column if not exists yarn_inward_id uuid;
alter table sizing add constraint fk_sizing_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table sizing add column if not exists sizing_id uuid;
alter table sizing add constraint fk_sizing_sizing foreign key (sizing_id) references sizing(id);
alter table sizing add column if not exists weaver_set_id uuid;
alter table sizing add constraint fk_sizing_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table sizing add column if not exists weaver_sizing_1_id uuid;
alter table sizing add constraint fk_sizing_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table sizing add column if not exists yarn_name_id uuid;
alter table sizing add constraint fk_sizing_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table sizing add column if not exists parity_for_pc_d_id uuid;
alter table sizing add constraint fk_sizing_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table sizing add column if not exists yarn_outward_id uuid;
alter table sizing add constraint fk_sizing_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table sizing add column if not exists brokers_id uuid;
alter table sizing add constraint fk_sizing_brokers foreign key (brokers_id) references brokers(id);
alter table sizing add column if not exists greige_stock_id uuid;
alter table sizing add constraint fk_sizing_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table sizing add column if not exists parity_id uuid;
alter table sizing add constraint fk_sizing_parity foreign key (parity_id) references parity(id);
alter table sizing add column if not exists terms_id uuid;
alter table sizing add constraint fk_sizing_terms foreign key (terms_id) references terms(id);
alter table sizing add column if not exists purchase_party_id uuid;
alter table sizing add constraint fk_sizing_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table sizing add column if not exists yarn_party_id uuid;
alter table sizing add constraint fk_sizing_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table sizing add column if not exists yarn_stock_id uuid;
alter table sizing add constraint fk_sizing_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table sizing add column if not exists costing_id uuid;
alter table sizing add constraint fk_sizing_costing foreign key (costing_id) references costing(id);
alter table sizing add column if not exists weaver_inward_id uuid;
alter table sizing add constraint fk_sizing_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table terms add column if not exists yarn_inward_id uuid;
alter table terms add constraint fk_terms_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table terms add column if not exists sizing_id uuid;
alter table terms add constraint fk_terms_sizing foreign key (sizing_id) references sizing(id);
alter table terms add column if not exists weaver_set_id uuid;
alter table terms add constraint fk_terms_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table terms add column if not exists weaver_sizing_1_id uuid;
alter table terms add constraint fk_terms_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table terms add column if not exists yarn_name_id uuid;
alter table terms add constraint fk_terms_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table terms add column if not exists parity_for_pc_d_id uuid;
alter table terms add constraint fk_terms_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table terms add column if not exists yarn_outward_id uuid;
alter table terms add constraint fk_terms_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table terms add column if not exists brokers_id uuid;
alter table terms add constraint fk_terms_brokers foreign key (brokers_id) references brokers(id);
alter table terms add column if not exists greige_stock_id uuid;
alter table terms add constraint fk_terms_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table terms add column if not exists parity_id uuid;
alter table terms add constraint fk_terms_parity foreign key (parity_id) references parity(id);
alter table terms add column if not exists terms_id uuid;
alter table terms add constraint fk_terms_terms foreign key (terms_id) references terms(id);
alter table terms add column if not exists purchase_party_id uuid;
alter table terms add constraint fk_terms_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table terms add column if not exists yarn_party_id uuid;
alter table terms add constraint fk_terms_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table terms add column if not exists yarn_stock_id uuid;
alter table terms add constraint fk_terms_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table terms add column if not exists costing_id uuid;
alter table terms add constraint fk_terms_costing foreign key (costing_id) references costing(id);
alter table terms add column if not exists weaver_inward_id uuid;
alter table terms add constraint fk_terms_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table weaver_inward add column if not exists yarn_inward_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table weaver_inward add column if not exists sizing_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_sizing foreign key (sizing_id) references sizing(id);
alter table weaver_inward add column if not exists weaver_set_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table weaver_inward add column if not exists weaver_sizing_1_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table weaver_inward add column if not exists yarn_name_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table weaver_inward add column if not exists parity_for_pc_d_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table weaver_inward add column if not exists yarn_outward_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table weaver_inward add column if not exists brokers_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_brokers foreign key (brokers_id) references brokers(id);
alter table weaver_inward add column if not exists greige_stock_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table weaver_inward add column if not exists parity_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_parity foreign key (parity_id) references parity(id);
alter table weaver_inward add column if not exists terms_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_terms foreign key (terms_id) references terms(id);
alter table weaver_inward add column if not exists purchase_party_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table weaver_inward add column if not exists yarn_party_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table weaver_inward add column if not exists yarn_stock_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table weaver_inward add column if not exists costing_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_costing foreign key (costing_id) references costing(id);
alter table weaver_inward add column if not exists weaver_inward_id uuid;
alter table weaver_inward add constraint fk_weaver_inward_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table weaver_set add column if not exists yarn_inward_id uuid;
alter table weaver_set add constraint fk_weaver_set_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table weaver_set add column if not exists sizing_id uuid;
alter table weaver_set add constraint fk_weaver_set_sizing foreign key (sizing_id) references sizing(id);
alter table weaver_set add column if not exists weaver_set_id uuid;
alter table weaver_set add constraint fk_weaver_set_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table weaver_set add column if not exists weaver_sizing_1_id uuid;
alter table weaver_set add constraint fk_weaver_set_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table weaver_set add column if not exists yarn_name_id uuid;
alter table weaver_set add constraint fk_weaver_set_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table weaver_set add column if not exists parity_for_pc_d_id uuid;
alter table weaver_set add constraint fk_weaver_set_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table weaver_set add column if not exists yarn_outward_id uuid;
alter table weaver_set add constraint fk_weaver_set_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table weaver_set add column if not exists brokers_id uuid;
alter table weaver_set add constraint fk_weaver_set_brokers foreign key (brokers_id) references brokers(id);
alter table weaver_set add column if not exists greige_stock_id uuid;
alter table weaver_set add constraint fk_weaver_set_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table weaver_set add column if not exists parity_id uuid;
alter table weaver_set add constraint fk_weaver_set_parity foreign key (parity_id) references parity(id);
alter table weaver_set add column if not exists terms_id uuid;
alter table weaver_set add constraint fk_weaver_set_terms foreign key (terms_id) references terms(id);
alter table weaver_set add column if not exists purchase_party_id uuid;
alter table weaver_set add constraint fk_weaver_set_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table weaver_set add column if not exists yarn_party_id uuid;
alter table weaver_set add constraint fk_weaver_set_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table weaver_set add column if not exists yarn_stock_id uuid;
alter table weaver_set add constraint fk_weaver_set_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table weaver_set add column if not exists costing_id uuid;
alter table weaver_set add constraint fk_weaver_set_costing foreign key (costing_id) references costing(id);
alter table weaver_set add column if not exists weaver_inward_id uuid;
alter table weaver_set add constraint fk_weaver_set_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table weaver_sizing_1 add column if not exists yarn_inward_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table weaver_sizing_1 add column if not exists sizing_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_sizing foreign key (sizing_id) references sizing(id);
alter table weaver_sizing_1 add column if not exists weaver_set_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table weaver_sizing_1 add column if not exists weaver_sizing_1_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table weaver_sizing_1 add column if not exists yarn_name_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table weaver_sizing_1 add column if not exists parity_for_pc_d_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table weaver_sizing_1 add column if not exists yarn_outward_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table weaver_sizing_1 add column if not exists brokers_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_brokers foreign key (brokers_id) references brokers(id);
alter table weaver_sizing_1 add column if not exists greige_stock_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table weaver_sizing_1 add column if not exists parity_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_parity foreign key (parity_id) references parity(id);
alter table weaver_sizing_1 add column if not exists terms_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_terms foreign key (terms_id) references terms(id);
alter table weaver_sizing_1 add column if not exists purchase_party_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table weaver_sizing_1 add column if not exists yarn_party_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table weaver_sizing_1 add column if not exists yarn_stock_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table weaver_sizing_1 add column if not exists costing_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_costing foreign key (costing_id) references costing(id);
alter table weaver_sizing_1 add column if not exists weaver_inward_id uuid;
alter table weaver_sizing_1 add constraint fk_weaver_sizing_1_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table yarn_inward add column if not exists yarn_inward_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table yarn_inward add column if not exists sizing_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_sizing foreign key (sizing_id) references sizing(id);
alter table yarn_inward add column if not exists weaver_set_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table yarn_inward add column if not exists weaver_sizing_1_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table yarn_inward add column if not exists yarn_name_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table yarn_inward add column if not exists parity_for_pc_d_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table yarn_inward add column if not exists yarn_outward_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table yarn_inward add column if not exists brokers_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_brokers foreign key (brokers_id) references brokers(id);
alter table yarn_inward add column if not exists greige_stock_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table yarn_inward add column if not exists parity_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_parity foreign key (parity_id) references parity(id);
alter table yarn_inward add column if not exists terms_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_terms foreign key (terms_id) references terms(id);
alter table yarn_inward add column if not exists purchase_party_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table yarn_inward add column if not exists yarn_party_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table yarn_inward add column if not exists yarn_stock_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table yarn_inward add column if not exists costing_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_costing foreign key (costing_id) references costing(id);
alter table yarn_inward add column if not exists weaver_inward_id uuid;
alter table yarn_inward add constraint fk_yarn_inward_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table yarn_name add column if not exists yarn_inward_id uuid;
alter table yarn_name add constraint fk_yarn_name_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table yarn_name add column if not exists sizing_id uuid;
alter table yarn_name add constraint fk_yarn_name_sizing foreign key (sizing_id) references sizing(id);
alter table yarn_name add column if not exists weaver_set_id uuid;
alter table yarn_name add constraint fk_yarn_name_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table yarn_name add column if not exists weaver_sizing_1_id uuid;
alter table yarn_name add constraint fk_yarn_name_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table yarn_name add column if not exists yarn_name_id uuid;
alter table yarn_name add constraint fk_yarn_name_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table yarn_name add column if not exists parity_for_pc_d_id uuid;
alter table yarn_name add constraint fk_yarn_name_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table yarn_name add column if not exists yarn_outward_id uuid;
alter table yarn_name add constraint fk_yarn_name_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table yarn_name add column if not exists brokers_id uuid;
alter table yarn_name add constraint fk_yarn_name_brokers foreign key (brokers_id) references brokers(id);
alter table yarn_name add column if not exists greige_stock_id uuid;
alter table yarn_name add constraint fk_yarn_name_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table yarn_name add column if not exists parity_id uuid;
alter table yarn_name add constraint fk_yarn_name_parity foreign key (parity_id) references parity(id);
alter table yarn_name add column if not exists terms_id uuid;
alter table yarn_name add constraint fk_yarn_name_terms foreign key (terms_id) references terms(id);
alter table yarn_name add column if not exists purchase_party_id uuid;
alter table yarn_name add constraint fk_yarn_name_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table yarn_name add column if not exists yarn_party_id uuid;
alter table yarn_name add constraint fk_yarn_name_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table yarn_name add column if not exists yarn_stock_id uuid;
alter table yarn_name add constraint fk_yarn_name_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table yarn_name add column if not exists costing_id uuid;
alter table yarn_name add constraint fk_yarn_name_costing foreign key (costing_id) references costing(id);
alter table yarn_name add column if not exists weaver_inward_id uuid;
alter table yarn_name add constraint fk_yarn_name_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table yarn_outward add column if not exists yarn_inward_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table yarn_outward add column if not exists sizing_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_sizing foreign key (sizing_id) references sizing(id);
alter table yarn_outward add column if not exists weaver_set_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table yarn_outward add column if not exists weaver_sizing_1_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table yarn_outward add column if not exists yarn_name_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table yarn_outward add column if not exists parity_for_pc_d_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table yarn_outward add column if not exists yarn_outward_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table yarn_outward add column if not exists brokers_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_brokers foreign key (brokers_id) references brokers(id);
alter table yarn_outward add column if not exists greige_stock_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table yarn_outward add column if not exists parity_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_parity foreign key (parity_id) references parity(id);
alter table yarn_outward add column if not exists terms_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_terms foreign key (terms_id) references terms(id);
alter table yarn_outward add column if not exists purchase_party_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table yarn_outward add column if not exists yarn_party_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table yarn_outward add column if not exists yarn_stock_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table yarn_outward add column if not exists costing_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_costing foreign key (costing_id) references costing(id);
alter table yarn_outward add column if not exists weaver_inward_id uuid;
alter table yarn_outward add constraint fk_yarn_outward_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table yarn_party add column if not exists yarn_inward_id uuid;
alter table yarn_party add constraint fk_yarn_party_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table yarn_party add column if not exists sizing_id uuid;
alter table yarn_party add constraint fk_yarn_party_sizing foreign key (sizing_id) references sizing(id);
alter table yarn_party add column if not exists weaver_set_id uuid;
alter table yarn_party add constraint fk_yarn_party_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table yarn_party add column if not exists weaver_sizing_1_id uuid;
alter table yarn_party add constraint fk_yarn_party_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table yarn_party add column if not exists yarn_name_id uuid;
alter table yarn_party add constraint fk_yarn_party_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table yarn_party add column if not exists parity_for_pc_d_id uuid;
alter table yarn_party add constraint fk_yarn_party_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table yarn_party add column if not exists yarn_outward_id uuid;
alter table yarn_party add constraint fk_yarn_party_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table yarn_party add column if not exists brokers_id uuid;
alter table yarn_party add constraint fk_yarn_party_brokers foreign key (brokers_id) references brokers(id);
alter table yarn_party add column if not exists greige_stock_id uuid;
alter table yarn_party add constraint fk_yarn_party_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table yarn_party add column if not exists parity_id uuid;
alter table yarn_party add constraint fk_yarn_party_parity foreign key (parity_id) references parity(id);
alter table yarn_party add column if not exists terms_id uuid;
alter table yarn_party add constraint fk_yarn_party_terms foreign key (terms_id) references terms(id);
alter table yarn_party add column if not exists purchase_party_id uuid;
alter table yarn_party add constraint fk_yarn_party_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table yarn_party add column if not exists yarn_party_id uuid;
alter table yarn_party add constraint fk_yarn_party_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table yarn_party add column if not exists yarn_stock_id uuid;
alter table yarn_party add constraint fk_yarn_party_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table yarn_party add column if not exists costing_id uuid;
alter table yarn_party add constraint fk_yarn_party_costing foreign key (costing_id) references costing(id);
alter table yarn_party add column if not exists weaver_inward_id uuid;
alter table yarn_party add constraint fk_yarn_party_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);
alter table yarn_stock add column if not exists yarn_inward_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_yarn_inward foreign key (yarn_inward_id) references yarn_inward(id);
alter table yarn_stock add column if not exists sizing_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_sizing foreign key (sizing_id) references sizing(id);
alter table yarn_stock add column if not exists weaver_set_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_weaver_set foreign key (weaver_set_id) references weaver_set(id);
alter table yarn_stock add column if not exists weaver_sizing_1_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_weaver_sizing_1 foreign key (weaver_sizing_1_id) references weaver_sizing_1(id);
alter table yarn_stock add column if not exists yarn_name_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_yarn_name foreign key (yarn_name_id) references yarn_name(id);
alter table yarn_stock add column if not exists parity_for_pc_d_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_parity_for_pc_d foreign key (parity_for_pc_d_id) references parity_for_pc_d(id);
alter table yarn_stock add column if not exists yarn_outward_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_yarn_outward foreign key (yarn_outward_id) references yarn_outward(id);
alter table yarn_stock add column if not exists brokers_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_brokers foreign key (brokers_id) references brokers(id);
alter table yarn_stock add column if not exists greige_stock_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_greige_stock foreign key (greige_stock_id) references greige_stock(id);
alter table yarn_stock add column if not exists parity_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_parity foreign key (parity_id) references parity(id);
alter table yarn_stock add column if not exists terms_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_terms foreign key (terms_id) references terms(id);
alter table yarn_stock add column if not exists purchase_party_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_purchase_party foreign key (purchase_party_id) references purchase_party(id);
alter table yarn_stock add column if not exists yarn_party_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_yarn_party foreign key (yarn_party_id) references yarn_party(id);
alter table yarn_stock add column if not exists yarn_stock_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_yarn_stock foreign key (yarn_stock_id) references yarn_stock(id);
alter table yarn_stock add column if not exists costing_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_costing foreign key (costing_id) references costing(id);
alter table yarn_stock add column if not exists weaver_inward_id uuid;
alter table yarn_stock add constraint fk_yarn_stock_weaver_inward foreign key (weaver_inward_id) references weaver_inward(id);