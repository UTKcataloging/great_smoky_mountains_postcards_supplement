# OpenRefine Template for Postcards Supplement

---

## Prefix

```
<?xml version="1.0" encoding="UTF-8"?>
<modsCollection xmlns="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd">
```

## Row Template

```
<identifier type="local">{{cells["adminDB Object"].value}}</identifier>
<titleInfo><title>{{cells["title"].value}}</title></titleInfo>
<physicalDescription><form authority="aat" valueURI="http://vocab.getty.edu/aat/300026816">postcards</form><internetMediaType>image/jp2</internetMediaType><digitalOrigin>reformatted digital</digitalOrigin></physicalDescription>
{{if(cells['name'].value != 'IGNORE', '<name' + if(cells['name_authority'].value != 'IGNORE', ' authority="' + cells['name_authority'].value + '"', '') + '><namePart>' + cells['name'].value + '</namePart>' + if(cells['name_role'].value != 'IGNORE', '<role><roleTerm authority="marcrelators">' + cells['name_role'].value + '</roleTerm>' + '</role>', '') + '</name>', '')}} 
{{if(cells['name 2'].value != 'IGNORE', '<name' + if(cells['name_authority 2'].value != 'IGNORE', ' authority="' + cells['name_authority 2'].value + '"', '') + '><namePart>' + cells['name 2'].value + '</namePart>' + if(cells['name_role 2'].value != 'IGNORE', '<role><roleTerm authority="marcrelators">' + cells['name_role 2'].value + '</roleTerm>' + '</role>', '') + '</name>', '')}}
{{if(cells['name 3'].value != 'IGNORE', '<name><namePart>' + cells['name 3'].value + '</namePart>' + if(cells['name_role 3'].value != 'IGNORE', '<role><roleTerm>' + cells['name_role 3'].value + '</roleTerm>' + '</role>', '') + '</name>', '')}}
<originInfo><dateCreated>{{cells['date_text'].value + '</dateCreated>' + if(cells['date_start'].value != 'IGNORE', '<dateCreated encoding="edtf" keyDate="yes" point="start"' + cells['date_start'].value + '</dateCreated>', '')+ if(cells['date_end'].value != 'IGNORE', '<dateCreated encoding="edtf" keyDate="yes" point="end"' + cells['date_end'].value + '</dateCreated>', '') '')}}

```

## Row Separator

**LEAVE BLANK**

## Suffix

```
</modsCollection>
```