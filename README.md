# ProcessTest

This is a test repository that demonstrates and issue with a jruby application importing a jar file that contains a Process class. The issue is that after running java_import, the top level ruby module Process is no longer accessible without specifying the :: global namespace.

## Testing

This test requires JRuby because it is importing a .jar file. I have added a .ruby_version file specifying jruby-1.7.10, but any version of JRuby should produce the same error.

There is a rspec test `spec/process_test_spec.rb` that can be run that will show the failures.

