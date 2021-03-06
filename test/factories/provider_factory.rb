FactoryBot.define do
  factory :katello_provider, :class => Katello::Provider do
    sequence(:name) { |n| "Adobe #{n}" }
    provider_type { "Custom" }
    association :organization, :factory => :katello_organization

    trait :fedora_hosted do
      name { "FedoraHosted" }
      description { "Project and repository hosting." }
      provider_type { "Custom" }
    end

    trait :redhat do
      name { "RedHatProvider" }
      description { "Serving Red Hat Content To You" }
      provider_type { "Red Hat" }
    end

    factory :katello_fedora_hosted_provider, :traits => [:fedora_hosted]
  end
end
