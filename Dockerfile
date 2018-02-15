FROM perl:5.22.1

RUN cpanm install \
        Dist::Zilla \
        Dist::Zilla::Plugin::AutoPrereqs \
        Dist::Zilla::Plugin::ExecDir \
        Dist::Zilla::Plugin::ExtraTests \
        Dist::Zilla::Plugin::GatherDir \
        Dist::Zilla::Plugin::License \
        Dist::Zilla::Plugin::MakeMaker \
        Dist::Zilla::Plugin::Manifest \
        Dist::Zilla::Plugin::ManifestSkip \
        Dist::Zilla::Plugin::MetaYAML \
        Dist::Zilla::Plugin::PodWeaver \
        Dist::Zilla::Plugin::PruneCruft \
        Dist::Zilla::Plugin::Readme \
        Dist::Zilla::Plugin::Run::AfterBuild \
        Dist::Zilla::Plugin::Run::BeforeBuild \
        Dist::Zilla::Plugin::Run::Test \
        Dist::Zilla::Plugin::Test::Perl::Critic \
        Software::License::GPL_3 \
        Moose \
        DBIx::Class \
        && rm -rf /root/.cpanm /tmp/*

CMD [ "dzil" ]

