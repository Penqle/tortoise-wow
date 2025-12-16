#ifndef _PEUTILS_HPP_
#define _PEUTILS_HPP_

#include <iostream>
#include <string>
#include <sstream>
#include <cstring>
#include <vector>
#include <algorithm>
#include <fstream>
#include <windows.h>
#include <exception>

class PortableExecutable 
{

public:

	class Exception : public std::exception 
	{
		public:
			Exception(const char* description) throw() : m_description(description) {}

			virtual const char* what() const throw() 
			{
				return m_description.c_str();
			}

			virtual ~Exception() throw() {}
		private:
			std::string m_description;
	};

	class Import 
	{
		private:
			DWORD		m_type;
			DWORD		m_ordinal;
			std::string m_name;
			DWORD		m_originalVirtualAddressLocation; /* in the P.E. */
		public:
			static const DWORD TYPE_ORDINAL = 0;
			static const DWORD TYPE_NAME = 1;

			Import();

			DWORD& Ordinal();
			const DWORD& Ordinal() const;

			DWORD& Type();
			std::string& Name();
			DWORD& OriginalVirtualAddressLocation();
	};

	class ImageImportDescriptor 
	{
		private:
			IMAGE_IMPORT_DESCRIPTOR m_imageImportDescriptor;
			DWORD		m_numberOfImports;
			std::string m_moduleName;
			std::vector< Import > m_imports;
		public:
			ImageImportDescriptor(const IMAGE_IMPORT_DESCRIPTOR&, DWORD);
			DWORD& NumberOfImports();
			std::vector< Import>& Imports();

			DWORD GetOriginalFirstThunk() const;
			std::string& Name();
			DWORD GetFirstThunk() const;
	};

	class ImportAddressTable 
	{
		private:
			DWORD 	m_virtualAddress;
			DWORD	m_size;
			std::vector< ImageImportDescriptor > m_modules;

		public:
			ImportAddressTable();
			ImportAddressTable(DWORD, DWORD);
			std::vector< ImageImportDescriptor >& Modules();

			/* Accessors */
			const DWORD& VirtualAddress() const;
			const DWORD& Size() const;

			/* Mutators */
			DWORD& VirtualAddress();
			DWORD& Size();

			/* Other */
			BOOL operator()(const PortableExecutable::Import&, const PortableExecutable::Import&) const;
	};



	class SectionHeader 
	{
		private:
			IMAGE_SECTION_HEADER m_imageSectionHeader;

		public:
			SectionHeader();
			std::string	GetName() const;
			DWORD		GetVirtualSize() const;
			DWORD		GetVirtualAddress() const;
			DWORD		GetSizeOfRawData() const;
			DWORD		GetPointerToRawData() const;
			DWORD		GetPointerToRelocations() const;
			DWORD		GetPointerToLineNumbers() const;
			WORD		GetNumberOfRelocations() const;
			WORD		GetNumberOfLineNumbers() const;
			DWORD		GetCharacteristics() const;

			VOID		SetName(LPSTR);
			VOID		SetVirtualSize(DWORD);
			VOID		SetVirtualAddress(DWORD);
			VOID		SetSizeOfRawData(DWORD);
			VOID		SetPointerToRawData(DWORD);
			VOID		SetPointerToRelocations(DWORD);
			VOID		SetPointerToLineNumbers(DWORD);
			VOID		SetNumberOfRelocations(WORD);
			VOID		SetNumberOfLineNumbers(WORD);
			VOID		SetCharacteristics(DWORD);

			inline const IMAGE_SECTION_HEADER& ImageSectionHeader() const { return m_imageSectionHeader; }

			SectionHeader& operator=(const IMAGE_SECTION_HEADER&);
	};

	class Export 
	{
		private:
			WORD m_ordinal;
			DWORD m_type; /* Ordinal either by name */
			std::string m_name;
			DWORD m_virtualAddress;
		public:

			static const long TYPE_NAME = 0;
			static const long TYPE_ORDINAL = 1;

			Export();
			Export(DWORD, const std::string, DWORD);
			WORD& Ordinal();
			DWORD& Type();
			std::string& Name();
			DWORD& VirtualAddress();

			const WORD& Ordinal() const;
			const DWORD& Type() const;
			const std::string& Name() const;
			const DWORD& VirtualAddress() const;
	};

	class ExportAddressTable 
	{
		private:
			DWORD 	m_virtualAddress;
			DWORD	m_size;
			IMAGE_EXPORT_DIRECTORY m_imageExportDirectory;
			std::vector< Export > m_exports;
		public:
			ExportAddressTable();
			ExportAddressTable(DWORD, DWORD, const IMAGE_EXPORT_DIRECTORY&);

			DWORD& VirtualAddress();
			DWORD& Size();
			IMAGE_EXPORT_DIRECTORY& ImageExportDirectory();
			std::vector< Export >& Exports();

			const DWORD& VirtualAddress() const;
			const DWORD& Size() const;
			const IMAGE_EXPORT_DIRECTORY& ImageExportDirectory() const;
			const std::vector< Export>& Exports() const;
	};


private:
	mutable std::fstream		m_stream;
	std::string					m_filename;
	IMAGE_DOS_HEADER			m_imageDosHeader;
	IMAGE_NT_HEADERS			m_imageNtHeaders;
	std::vector<SectionHeader>	m_sectionHeaders;


	/* Private methods */
	std::streamoff GetFileSize() const;
	VOID UpdateSectionHeaders();

public:

	PortableExecutable(LPCSTR);
	virtual ~PortableExecutable();
	std::fstream& FilePointer();
	std::string& Filename();
	std::vector<SectionHeader>& SectionHeaders();


	ImportAddressTable GetImportAddressTable();

	ExportAddressTable GetExportAddressTable() const;

	VOID AddSection(SectionHeader&);
	VOID AddSection(LPSTR, DWORD, DWORD, DWORD);
	DWORD RvaToOffset(DWORD) const;
	DWORD OffsetToRva(DWORD) const;

	BOOL AddFreeSpaceAfterHeaders(DWORD);
	VOID Append(DWORD, BYTE) const;


};


#endif
