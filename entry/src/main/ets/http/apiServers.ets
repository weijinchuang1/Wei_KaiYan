import { CommonConstants } from '../constants/CommonConstants'

import { HomeModel } from '../model/HomeModel'
import { FocusModel } from '../model/FocusModel'
import axiosClient from './AxiosRequest'
import { AxiosHeaders } from '@ohos/axios'

let baseUrl = "https://baobab.kaiyanapp.com/"
let wanAndroidUrl = "https://www.wanandroid.com/"
const commonHeader: AxiosHeaders = new AxiosHeaders()

/**
 * 请求首页数据-axios客户端请求
 * @param date
 * @returns
 */
export function getHomeListAxios() {
  return axiosClient.get<HomeModel>({
    url: baseUrl + "api/v2/feed",

    headers: commonHeader
  })
}
/**
 * 获取关注接口
 */
export function getFocusData() {
  return axiosClient.get<FocusModel>({
    url: baseUrl + "api/v4/tabs/follow",
    headers: commonHeader
  }
  )
}
/**
 * 获取视频详情接口
 * @param id
 */
export function getRelationList(id: number) {
  return axiosClient.get<HomeModel>(
    {
      url: baseUrl + "api/v4/video/related",
      params: { "id": id },
      headers: commonHeader
    }
  )
}







