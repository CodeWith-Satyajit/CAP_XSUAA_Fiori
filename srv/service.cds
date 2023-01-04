using cap_xsuaa_fiori_N from '../db/schema';

service CatalogService @(requires : 'authenticated-user') {

    @requires : 'CompanyCode_Access'
    entity CompanyCode @(restrict : [{
        grant : 'READ',
        where : 'CompanyCode = $user.CompanyCode'
    }]) as projection on cap_xsuaa_fiori_N.CompanyCode;
}
