# ProcessTest

This is a test repository that demonstrates and issue with a jruby application importing a jar file that contains a Process class. The issue is that after running java_import, the top level ruby module Process is no longer accessible even when specifying the :: global namespace.

## Testing

This test requires JRuby because it is importing a .jar file. I have tested with jruby-1.7.10, jruby-1.7.20, and jruby-9.0.1.0. All version produce the same results.

There is a rspec test `spec/process_test_spec.rb` that can be run that will show the failures.

```
.FF

Failures:

  1) Process after importing java class responds to #pid
     Failure/Error: expect(Process).to respond_to :pid
       expected Java::OrgProcess_test::Process to respond to :pid
     # ./spec/process_test_spec.rb:15:in `block in (root)'

  2) Process after importing java class responds to #pid with global namespace
     Failure/Error: expect(::Process).to respond_to :pid
       expected Java::OrgProcess_test::Process to respond to :pid
     # ./spec/process_test_spec.rb:19:in `block in (root)'

Finished in 0.167 seconds (files took 3 seconds to load)
3 examples, 2 failures

Failed examples:

rspec ./spec/process_test_spec.rb:14 # Process after importing java class responds to #pid
rspec ./spec/process_test_spec.rb:18 # Process after importing java class responds to #pid with global namespace
```
