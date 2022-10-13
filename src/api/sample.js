import request from '@/utils/request'

export function getHelloWorld() {
  return request({
    url: '/',
    method: 'get'
  })
}
