include_recipe "inductor::cloud"

execute "inductor stop #{node[:inductor_cloud]}" do
  cwd node[:inductor][:inductor_home]
  user "#{node.inductor.user}"
end

execute "inductor disable #{node[:inductor_cloud]}" do
  cwd node[:inductor][:inductor_home]
  user "#{node.inductor.user}"
end
