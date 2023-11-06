use rs::{
  PUZZLE_INPUT,
  get_floor,
  get_position_to_first_enter_basement,
  get_position_to_first_enter_basement_v2,
};

use criterion::{
  criterion_group,
  criterion_main,
  Criterion
};


fn get_floor_benchmark(c: &mut Criterion) {
  c.bench_function("get_floor", |b| b.iter(|| get_floor(PUZZLE_INPUT, 0)));
}

fn get_position_to_first_enter_basement_benchmark(c: &mut Criterion) {
  c.bench_function("get_position_to_first_enter_basement", |b| b.iter(|| get_position_to_first_enter_basement(PUZZLE_INPUT)));
}

fn get_position_to_first_enter_basement_v2_benchmark(c: &mut Criterion) {
  c.bench_function("get_position_to_first_enter_basement_v2", |b| b.iter(|| get_position_to_first_enter_basement_v2(PUZZLE_INPUT)));
}

criterion_group!(
  benches, 
  get_floor_benchmark,
  get_position_to_first_enter_basement_benchmark,
  get_position_to_first_enter_basement_v2_benchmark,
);
criterion_main!(benches);