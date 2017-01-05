/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mss.ediscv.tpOnboarding;

import com.mss.ediscv.util.ServiceLocatorException;

/**
 *
 * @author raja
 */
public interface TpOnboardingService {

    public String addTP(TpOnboardingAction tpAction) throws ServiceLocatorException;

    public TpOnboardingBean getTpoDetails(String loginId) throws ServiceLocatorException;

    public String updateTPO(TpOnboardingAction tpAction) throws ServiceLocatorException;
//new

    public String tpoREGISTER(TpOnboardingAction tpAction) throws ServiceLocatorException;

    public TpOnboardingBean getPartnerInfo(int PartnerId, String loginId) throws ServiceLocatorException;

    public String updatePartnerInfo(TpOnboardingAction tpAction,String loginId,int partnerId) throws ServiceLocatorException;
}
