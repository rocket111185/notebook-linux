Name:           notebook
Version:        1
Release:        0
Summary:        Simple script that allows to make notes inside terminal.
Packager:       D_MENT
Group:          Application/Other
License:        MIT
URL:            https://github.com/rocket111185/notebook-linux.git
Source0:        notebook-1.tar.gz
BuildArch:      noarch

%description
Simple script that allows to make notes inside terminal.

%prep
%setup -q


%build

%install
rm -rf $RPM_BUILD_ROOT
mkdir -p $RPM_BUILD_ROOT/usr/local/sbin
cp notebook $RPM_BUILD_ROOT/usr/local/sbin/

%clean
rm -rf $RPM_BUILD_ROOT

%files
%defattr(-,root,root,-)
%dir /usr/local/sbin
/usr/local/sbin/notebook

%doc

%changelog
* Sun Apr 12 2019 Rekechynsky Dmytro
- Initial rpm release


